using { /Verse.org/Simulation }
 
(Listenable : listenable(agent)).SubscribeAgent(OutputFunc : tuple(agent, t)->void, ExtraData : t where t:type) : cancelable =
    Wrapper := wrapper_agent(t){ExtraData := ExtraData, OutputFunc := OutputFunc}
    Listenable.Subscribe(Wrapper.InputFunc)
 
wrapper_agent(t : type) := class():
    ExtraData : t;
    OutputFunc : tuple(agent, t) -> void
    InputFunc(Agent : agent):void = OutputFunc(Agent, ExtraData)
 
(Listenable : listenable(tuple())).SubscribeEmpty(OutputFunc : t -> void, ExtraData : t where t:type) : cancelable =
    Wrapper := wrapper_empty(t) {ExtraData := ExtraData, OutputFunc := OutputFunc}
    Listenable.Subscribe(Wrapper.InputFunc)
 
wrapper_empty(t : type) := class():
    ExtraData : t;
    OutputFunc : t -> void
    InputFunc():void = OutputFunc(ExtraData)

(Listenable : listenable(?agent)).SubscribeAgentVoid(Out : tuple(?agent, t)->void, MyData : t where t:type) : cancelable =
  Wrapper := wrapper_agentvoid(t){MyData := MyData, Out := Out}
  Listenable.Subscribe(Wrapper.In)

wrapper_agentvoid(t : type) := class():
  MyData : t;
  Out : tuple(?agent, t) -> void
  In(Agent : ?agent):void = Out(Agent, MyData)