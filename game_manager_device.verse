
using { /Fortnite.com/Devices }
using { /Fortnite.com/Game }
using { /Fortnite.com/Characters }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Verse.org/Simulation/Tags }


spawner := class(tag){}

var game_manager_singleton : weak_map(session, my_game_manager_class) = map{}

my_game_manager_class := class:

    var CustomPlayers : [player]custom_player = map{}

    InitSpawners():void=    # Initializes the Spawners around the map (with the tag "spawner")
        Spawners := GetCreativeObjectsWithTag(spawner{})
        for(obj:Spawners):
            if (Spawner := player_spawner_device[obj]):
                Spawner.SpawnedEvent.Subscribe(OnPlayerSpawned)

    OnPlayerSpawned(Agent: agent):void= # Starts the Initialization when a player spawns (on a spawndevice)
        if (Player := player[Agent]):
            InitPlayer(Player)
            
    InitPlayer(Player : player):void= #initializing a player
        if:
            Agent := agent[Player]
            Fort := Agent.GetFortCharacter[]
        then:
            if (Existing := CustomPlayers[Player]){}
            else:   # Space for other functions that should be initialized with the player (defined in custom_player.verse)
                CustomPlayer := custom_player{Player := Player, Coins := 0, SecondCoins := 0} #Building the constructor of custom_player class
                CustomPlayer.Init()
                if (set CustomPlayers[Player] = CustomPlayer) {}
            

    OnPlayerLeftServer(PlayerLeaving : player):void= # Function on what happens if the player leaves the server
        if(CustomPlayer := CustomPlayers[PlayerLeaving]):
            
            Print("Starting to dispose")
            CustomPlayer.Dispose()  # func that disposes players assets
            
            var NewCustomPlayerMap:[player]custom_player = map{}    

            #remove player from memory
            for(Key -> Value:CustomPlayers, Key <> PlayerLeaving):
                set NewCustomPlayerMap = ConcatenateMaps(NewCustomPlayerMap, map {Key => Value})
            
            set CustomPlayers = NewCustomPlayerMap  # updates the map

GetGMInstance()<transacts>:my_game_manager_class=
    Session:=GetSession()
    if(Instance:=game_manager_singleton[Session]). Instance
    else if(Instance := my_game_manager_class{}, set game_manager_singleton[Session] = Instance). Instance
    else. Err()
    

game_manager_device := class(creative_device):

    OnBegin<override>()<suspends>:void= # makes the device activly run functions
        Instance:=GetGMInstance()
        GetPlayspace().PlayerRemovedEvent().Subscribe(Instance.OnPlayerLeftServer)   # listening when a player leaves
        Instance.InitSpawners()  #initializing the spawners