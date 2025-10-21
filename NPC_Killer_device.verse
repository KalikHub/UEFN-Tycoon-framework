
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }


NPC_Killer_device := class(creative_device):

    @editable npcspawner_device : npc_spawner_device = npc_spawner_device{}


    OnKill(Res:device_ai_interaction_result):void=
        if(Agent := Res.Source?):
            if:
                Player:=player[Agent]
                CustomPlayer := GetGMInstance().CustomPlayers[Player]
            then:
                Print("here i am too")
                CustomPlayer.GiveCoins(CustomPlayer.CoinsAsec)
                CustomPlayer.SecondGiveCoins(CustomPlayer.SecondCoinsAsec)

    OnBegin<override>()<suspends>:void=
        npcspawner_device.EliminatedEvent.Subscribe(OnKill)