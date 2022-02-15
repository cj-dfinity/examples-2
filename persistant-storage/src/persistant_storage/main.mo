actor {

    stable var cnt : Nat = 0;
    var counter : Nat = cnt;

    public func increment() : async Nat {
        counter += 1;
        return counter;
    };

    public query func get() : async Nat {
        return counter;
    };
    
    public func reset() : async Nat {
        counter := 0;
        return counter;
    };

    system func preupgrade() {
        cnt := counter;
    };

    system func postupgrade() {
        cnt := 0;
    };
};
