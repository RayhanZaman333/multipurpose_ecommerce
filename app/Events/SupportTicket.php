<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Contracts\Broadcasting\ShouldBroadcastNow;

/* included models */
use App\Models\User;
use App\Models\Ticket;
use App\Models\Message;

class SupportTicket implements ShouldBroadcastNow
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $ticket;

    /**
     * Create a new event instance.
     *
     * @param Ticket $ticket
     * @return void
     */
    public function __construct(Ticket $ticket)
    {
        $this->ticket = $ticket;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel
     */
    public function broadcastOn()
    {
        return ['ecommerce-ticket'];
    }

    /**
     * Prepare the data to be broadcast.
     *
     * @return array
     */
    public function broadcastWith()
    {
        $user = User::find($this->ticket->user_id); 
        $lastMessage = Message::where('ticket_id', $this->ticket->id)->latest()->first(); 

        if ($user) {
            return [
                'id '           => $this->ticket->id,
                'subject'       => $this->ticket->subject,
                'message'       => $this->ticket->message,
                'status'        => $this->ticket->status,
                'user'          => [
                    'id'            => $user->id,
                    'first_name'    => $user->first_name,
                ],
                'lastMessage'   => [
                    'id'            => $lastMessage->id,
                    'created_at'    => $lastMessage->created_at,
                ],
            ];
        } else {
            return [
                'id '           => $this->ticket->id,
                'subject'       => $this->ticket->subject,
                'message'       => $this->ticket->message,
                'status'        => $this->ticket->status,
                'user'          => [
                    'id'            => null,
                    'first_name'    => null,
                ],
                'lastMessage'   => [
                    'id'            => null,
                    'created_at'    => null,
                ],
            ];
        }
    }

    public function broadcastAs()
    {
        return 'ticket-event';
    }
}
