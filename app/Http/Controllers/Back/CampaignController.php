<?php

namespace App\Http\Controllers\Back;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;

// included models
use App\Models\Campaign;
use App\Models\CampaignItem;
use App\Models\Item;

class CampaignController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
        $this->middleware('adminlocalize');
    }

    public function index()
    {
        $datas = Campaign::orderBy('id', 'desc')->get();
        
        return view('back.item.campaign.index',[
            'datas' => $datas,
        ]);
    }

    public function create()
    {
        $datas = Item::whereStatus(1)->select('name', 'id')->orderBy('id', 'desc')->get();
        
        return view('back.item.campaign.create', [
            'datas' => $datas,
        ]);
    }

    public function itemAdd($id)
    {
        $data = Campaign::where('id', $id)->first();
        $datas = Item::whereStatus(1)->select('name', 'id')->orderBy('id', 'desc')->get();
        $items = CampaignItem::where('campaign_id', $id)->orderby('id', 'desc')->get();
        
        return view('back.item.campaign.addProduct', [
            'data' => $data,
            'datas' => $datas,
            'items' => $items,
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'campaign_title'        => 'required',
            'campaign_start_date'   => 'required',
            'campaign_end_date'     => 'required',
            'campaign_status'       => 'required'
        ]);

        $data = new Campaign();

        $data->campaign_title       = $request->campaign_title;
        $data->campaign_start_date  = $request->campaign_start_date;
        $data->campaign_end_date    = $request->campaign_end_date;
        $data->campaign_status      = $request->campaign_status;
        $data->created_by           = Auth::id();

        $data->save();

        $datas = Item::whereStatus(1)->select('name', 'id')->orderBy('id', 'desc')->get();
        $items = CampaignItem::where('campaign_id', $data->id)->orderby('id','desc')->get();

        return redirect()->route('back.campaign.itemAdd', $data->id)->with('data', 'datas', 'items')->withSuccess(__('New Campaign Created Successfully. Add Product for Campaign Now'));
    }

    public function itemStore(Request $request)
    {
        $request->validate([
            'item_id' => 'required'
        ]);

        foreach ($request->item_id as $key => $item) {
            if (CampaignItem::where('campaign_id', $request->campaign_id)->whereItemId($item)->exists()) {
                return redirect()->back()->withError(__('Already Added This Product.'));
            }

            $product['campaign_id']    = $request->campaign_id;
            $product['item_id']        = $item;
            $product['status']         = 1;
            $product['is_feature']     = 0;

            CampaignItem::create($product);
        }

        return redirect()->route('back.campaign.index')->withSuccess(__('New Product Added Successfully.'));
    }

    public function edit($id)
    {
        $data = Campaign::where('id', $id)->first();
        $datas = Item::whereStatus(1)->select('name', 'id')->orderBy('id', 'desc')->get();
        $items = CampaignItem::where('campaign_id', $id)->orderby('id', 'desc')->get();
        
        return view('back.item.campaign.edit', [
            'data' => $data,
            'datas' => $datas,
            'items' => $items,
        ]);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'campaign_title'        => 'required',
            'campaign_start_date'   => 'required',
            'campaign_end_date'     => 'required',
            'campaign_status'       => 'required'
        ]);

        $id = Crypt::decryptString($id);
        $data = Campaign::where('id', $id)->first();

        $data->campaign_title       = $request->campaign_title;
        $data->campaign_start_date  = $request->campaign_start_date;
        $data->campaign_end_date    = $request->campaign_end_date;
        $data->campaign_status      = $request->campaign_status;
        $data->updated_by           = Auth::id();

        $data->save();

        return redirect()->back()->withSuccess(__('Campaign Information Updated Successfully!'));
    }

    public function itemUpdate(Request $request)
    {
        $request->validate([
            'item_id' => 'required'
        ]);
        
        if (CampaignItem::where('campaign_id', $request->campaign_id)->whereItemId($request->item_id)->exists()) {
            return redirect()->back()->withError(__('Already Added This Product.'));
        } else {
            $product = new CampaignItem;

            $product->campaign_id    = $request->campaign_id;
            $product->item_id        = $request->item_id;
            $product->status         = 1;
            $product->is_feature     = 0;
    
            $product->save();
    
            return redirect()->back()->withSuccess(__('New Product Added Successfully.'));
        }
    }

    public function delete($id)
    {
        $items = CampaignItem::where('campaing_id', $id)->get();

        if (count($items) > 0) {
            foreach ($items as $key => $item) {
                $item->delete();
            }
        }

        Campaign::where('id', $id)->delete();

        return redirect()->back()->withSuccess(__('Product Deleted Successfully.'));
    }

    public function destroy($id)
    {
        $data = CampaignItem::findOrFail($id);

        $data->delete();

        return redirect()->back()->withSuccess(__('Product Deleted Successfully.'));
    }

    /**
     * Change the status for editing the specified resource.
     *
     * @param  int  $id
     * @param  int  $status
     * @return \Illuminate\Http\Response
     */
    public function changeStatus($id, $status)
    {
        $campaign = Campaign::findOrFail($id);

        $campaign->update(['campaign_status' => $status]);

        return redirect()->route('back.campaign.index')->withSuccess(__('Status Updated Successfully.'));
    }

    public function status($id,$status,$type)
    {
        if($type == 'is_feature' && $status == 1){
            if(CampaignItem::whereIsFeature(1)->count() == 10){
                return redirect()->route('back.campaign.index')->withError(__('10 products are already added to feature'));
            }
        }

        $item = CampaignItem::findOrFail($id);

        $item->update([$type => $status]);

        return redirect()->route('back.campaign.index')->withSuccess(__('Status Updated Successfully.'));
    }
}
