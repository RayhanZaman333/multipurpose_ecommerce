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
use App\Models\Ticket;

class SupportTicket implements ShouldBroadcastNow
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $message;

    /**
     * Create a new event instance.
     *
     * @param Chat $message
     * @return void
     */
    public function __construct(Ticket $message)
    {
        $this->message = $message;
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
        $user = User::find($this->message->user_id); 

        if ($user) {
            return [
                'id ' => $this->message->id,
                'subject' => $this->message->subject,
                'message' => $this->message->message,
                'status' => $this->message->status,
                'created_at' => $this->message->created_at,
            ];
        } else {
            return [
                'message' => $this->message->message,
                'receiver_id' => $this->message->receiver_id,
                'sender_id' => $this->message->sender_id,
                'user' => [
                    'id' => null,
                    'name' => 'Unknown User',
                    'image' => asset('storage/default-avatar.png'), // Default image if user is not found
                ],
                'created_at' => $this->message->created_at,
            ];
        }
    }

    public function broadcastAs()
    {
        return 'ticket-event';
    }
}
