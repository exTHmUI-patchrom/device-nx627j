.class public Lcom/android/server/wifi/hotspot2/PasspointEventHandler;
.super Ljava/lang/Object;
.source "PasspointEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;
    }
.end annotation


# instance fields
.field private final mCallbacks:Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;

.field private final mSupplicantHook:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;)V
    .locals 0
    .param p1, "supplicantHook"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "callbacks"    # Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    .line 71
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mCallbacks:Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;

    .line 72
    return-void
.end method

.method private static buildAnqpIdSet(Ljava/util/List;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 147
    .local p0, "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v0, "anqpIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 149
    .local v1, "hs20Subtypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 150
    .local v3, "elementType":Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v4

    .line 151
    .local v4, "id":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 152
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    :cond_0
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/anqp/Constants;->getHS20ElementID(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v4

    .line 155
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v3    # "elementType":Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .end local v4    # "id":Ljava/lang/Integer;
    :goto_1
    goto :goto_0

    .line 158
    :cond_1
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public notifyANQPDone(Lcom/android/server/wifi/hotspot2/AnqpEvent;)V
    .locals 4
    .param p1, "anqpEvent"    # Lcom/android/server/wifi/hotspot2/AnqpEvent;

    .line 113
    if-nez p1, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mCallbacks:Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/AnqpEvent;->getBssid()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/AnqpEvent;->getElements()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;->onANQPResponse(JLjava/util/Map;)V

    .line 115
    return-void
.end method

.method public notifyIconDone(Lcom/android/server/wifi/hotspot2/IconEvent;)V
    .locals 5
    .param p1, "iconEvent"    # Lcom/android/server/wifi/hotspot2/IconEvent;

    .line 124
    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mCallbacks:Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;

    .line 126
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getBSSID()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getData()[B

    move-result-object v4

    .line 125
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;->onIconResponse(JLjava/lang/String;[B)V

    .line 127
    return-void
.end method

.method public notifyWnmFrameReceived(Lcom/android/server/wifi/hotspot2/WnmData;)V
    .locals 1
    .param p1, "data"    # Lcom/android/server/wifi/hotspot2/WnmData;

    .line 136
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mCallbacks:Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;->onWnmFrameReceived(Lcom/android/server/wifi/hotspot2/WnmData;)V

    .line 137
    return-void
.end method

.method public requestANQP(JLjava/util/List;)Z
    .locals 7
    .param p1, "bssid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;)Z"
        }
    .end annotation

    .line 81
    .local p3, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;>;"
    invoke-static {p3}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->buildAnqpIdSet(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 82
    .local v0, "querySets":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/Integer;>;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    .line 84
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {p1, p2}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    .line 83
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/wifi/WifiNative;->requestAnqp(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANQP failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v2

    .line 89
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANQP initiated on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x1

    return v1

    .line 82
    :cond_2
    :goto_0
    return v2
.end method

.method public requestIcon(JLjava/lang/String;)Z
    .locals 3
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;

    .line 100
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    .line 102
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {v0, v1, v2, p3}, Lcom/android/server/wifi/WifiNative;->requestIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 100
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
