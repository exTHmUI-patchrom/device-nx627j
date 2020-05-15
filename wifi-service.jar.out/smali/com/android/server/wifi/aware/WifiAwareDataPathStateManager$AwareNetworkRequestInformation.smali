.class public Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
.super Ljava/lang/Object;
.source "WifiAwareDataPathStateManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AwareNetworkRequestInformation"
.end annotation


# static fields
.field static final STATE_CONFIRMED:I = 0x66

.field static final STATE_IDLE:I = 0x64

.field static final STATE_INITIATOR_WAIT_FOR_REQUEST_RESPONSE:I = 0x67

.field static final STATE_RESPONDER_WAIT_FOR_REQUEST:I = 0x68

.field static final STATE_RESPONDER_WAIT_FOR_RESPOND_RESPONSE:I = 0x69

.field static final STATE_TERMINATING:I = 0x6a

.field static final STATE_WAIT_FOR_CONFIRM:I = 0x65


# instance fields
.field public channelInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public equivalentSpecifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field public interfaceName:Ljava/lang/String;

.field public ndpId:I

.field public networkAgent:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

.field public networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

.field public peerDataMac:[B

.field public peerDiscoveryMac:[B

.field public peerInstanceId:I

.field public pubSubId:I

.field public startTimestamp:J

.field public state:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->pubSubId:I

    .line 1013
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerInstanceId:I

    .line 1014
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    .line 1015
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    .line 1019
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->startTimestamp:J

    .line 1027
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->equivalentSpecifiers:Ljava/util/Set;

    return-void
.end method

.method private getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 4

    .line 1051
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-static {}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$800()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1052
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    new-instance v1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->equivalentSpecifiers:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->equivalentSpecifiers:Ljava/util/Set;

    .line 1053
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 1052
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    invoke-direct {v1, v2}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;-><init>([Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 1054
    return-object v0
.end method

.method static processNetworkSpecifier(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;Z)Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    .locals 15
    .param p0, "ns"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .param p1, "mgr"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p2, "wifiPermissionsUtil"    # Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .param p3, "permissionWrapper"    # Lcom/android/server/wifi/util/WifiPermissionsWrapper;
    .param p4, "allowNdpResponderFromAnyOverride"    # Z

    move-object v1, p0

    .line 1069
    const/4 v0, 0x0

    .line 1070
    .local v0, "pubSubId":I
    const/4 v2, 0x0

    .line 1071
    .local v2, "peerInstanceId":I
    iget-object v3, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 1078
    .local v3, "peerMac":[B
    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    const/4 v5, 0x0

    if-ltz v4, :cond_14

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    const/4 v6, 0x3

    if-le v4, v6, :cond_0

    goto/16 :goto_2

    .line 1086
    :cond_0
    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-eq v4, v6, :cond_1

    .line 1088
    const-string v4, "WifiAwareDataPathStMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -- invalid \'role\' value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return-object v5

    .line 1093
    :cond_1
    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    const/4 v7, 0x2

    if-nez v4, :cond_2

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    if-eqz v4, :cond_2

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    if-eq v4, v7, :cond_2

    .line 1096
    const-string v4, "WifiAwareDataPathStMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -- invalid \'type\' value for INITIATOR (only IB and OOB are permitted)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return-object v5

    .line 1103
    :cond_2
    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    move-object/from16 v8, p1

    invoke-virtual {v8, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getClient(I)Lcom/android/server/wifi/aware/WifiAwareClientState;

    move-result-object v4

    .line 1104
    .local v4, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v4, :cond_3

    .line 1105
    const-string v6, "WifiAwareDataPathStMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " -- not client with this id -- clientId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    return-object v5

    .line 1109
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v9

    .line 1115
    .local v9, "uid":I
    if-nez p4, :cond_4

    .line 1116
    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getCallingPackage()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1c

    .line 1115
    move-object/from16 v12, p2

    invoke-virtual {v12, v10, v11}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->isLegacyVersion(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1117
    iget v10, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    if-eqz v10, :cond_5

    iget v10, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    if-eq v10, v7, :cond_5

    .line 1119
    const-string v6, "WifiAwareDataPathStMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " -- no ANY specifications allowed for this API level"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    return-object v5

    .line 1126
    :cond_4
    move-object/from16 v12, p2

    :cond_5
    iget v7, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    if-eqz v7, :cond_6

    iget v7, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    if-ne v7, v6, :cond_e

    .line 1128
    :cond_6
    iget v7, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-virtual {v4, v7}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v7

    .line 1129
    .local v7, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v7, :cond_7

    .line 1130
    const-string v6, "WifiAwareDataPathStMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " -- no session with this id -- sessionId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return-object v5

    .line 1136
    :cond_7
    invoke-virtual {v7}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isPublishSession()Z

    move-result v10

    if-eqz v10, :cond_8

    iget v10, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-ne v10, v6, :cond_9

    .line 1138
    :cond_8
    invoke-virtual {v7}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isPublishSession()Z

    move-result v6

    if-nez v6, :cond_a

    iget v6, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-eqz v6, :cond_a

    .line 1140
    :cond_9
    const-string v6, "WifiAwareDataPathStMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " -- invalid role for session type"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return-object v5

    .line 1145
    :cond_a
    iget v6, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    if-nez v6, :cond_e

    .line 1146
    invoke-virtual {v7}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getPubSubId()I

    move-result v6

    .line 1147
    .end local v0    # "pubSubId":I
    .local v6, "pubSubId":I
    iget v0, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-virtual {v7, v0}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getPeerInfo(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;

    move-result-object v10

    .line 1149
    .local v10, "peerInfo":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;
    if-nez v10, :cond_b

    .line 1150
    const-string v0, "WifiAwareDataPathStMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " -- no peer info associated with this peer id -- peerId="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    return-object v5

    .line 1155
    :cond_b
    iget v2, v10, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;->mInstanceId:I

    .line 1157
    :try_start_0
    iget-object v0, v10, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;->mMac:[B

    move-object v3, v0

    .line 1158
    if-eqz v3, :cond_d

    array-length v0, v3

    const/4 v11, 0x6

    if-eq v0, v11, :cond_c

    goto :goto_0

    .line 1167
    :cond_c
    nop

    .line 1172
    move v0, v6

    goto :goto_1

    .line 1159
    :cond_d
    :goto_0
    const-string v0, "WifiAwareDataPathStMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " -- invalid peer MAC address"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    return-object v5

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v11, "WifiAwareDataPathStMgr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " -- invalid peer MAC address -- e="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return-object v5

    .line 1172
    .end local v6    # "pubSubId":I
    .end local v7    # "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    .end local v10    # "peerInfo":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;
    .local v0, "pubSubId":I
    :cond_e
    :goto_1
    iget v6, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    if-eq v6, v9, :cond_f

    .line 1173
    const-string v6, "WifiAwareDataPathStMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " -- UID mismatch to clientId\'s uid="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return-object v5

    .line 1179
    :cond_f
    iget-object v6, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    if-eqz v6, :cond_10

    iget-object v6, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    array-length v6, v6

    if-eqz v6, :cond_10

    .line 1180
    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    iget v7, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    move-object/from16 v10, p3

    invoke-virtual {v10, v6, v7}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getUidPermission(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_11

    .line 1182
    const-string v6, "WifiAwareDataPathStMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -- UID doesn\'t have permission to use PMK API"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    return-object v5

    .line 1189
    :cond_10
    move-object/from16 v10, p3

    :cond_11
    iget-object v6, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1190
    iget-object v6, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1191
    const-string v6, "WifiAwareDataPathStMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -- invalid passphrase length: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 1192
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1191
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    return-object v5

    .line 1196
    :cond_12
    iget-object v6, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    if-eqz v6, :cond_13

    iget-object v6, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    invoke-static {v6}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    move-result v6

    if-nez v6, :cond_13

    .line 1197
    const-string v6, "WifiAwareDataPathStMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -- invalid pmk length: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    array-length v11, v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return-object v5

    .line 1203
    :cond_13
    new-instance v5, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    invoke-direct {v5}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;-><init>()V

    .line 1204
    .local v5, "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    const/16 v6, 0x64

    iput v6, v5, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    .line 1205
    iput v9, v5, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->uid:I

    .line 1206
    iput v0, v5, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->pubSubId:I

    .line 1207
    iput v2, v5, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerInstanceId:I

    .line 1208
    iput-object v3, v5, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    .line 1209
    iput-object v1, v5, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 1210
    iget-object v6, v5, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->equivalentSpecifiers:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1212
    return-object v5

    .line 1080
    .end local v4    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v5    # "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    .end local v9    # "uid":I
    :cond_14
    :goto_2
    move-object/from16 v8, p1

    move-object/from16 v12, p2

    move-object/from16 v10, p3

    const-string v4, "WifiAwareDataPathStMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processNetworkSpecifier: networkSpecifier="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", invalid \'type\' value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return-object v5
.end method


# virtual methods
.method getCanonicalDescriptor()Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;
    .locals 5

    .line 1061
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v2, v2, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget v3, v3, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v4, v4, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;-><init>([B[BILjava/lang/String;)V

    return-object v0
.end method

.method removeSupportForRequest(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)V
    .locals 1
    .param p1, "ns"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 1043
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->equivalentSpecifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1048
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AwareNetworkRequestInformation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->uid:I

    .line 1219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interfaceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pubSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->pubSubId:I

    .line 1220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peerInstanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peerDiscoveryMac="

    .line 1221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 1223
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 1221
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ndpId="

    .line 1223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    .line 1224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peerDataMac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDataMac:[B

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    .line 1226
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDataMac:[B

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 1224
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTimestamp="

    .line 1226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->startTimestamp:J

    .line 1227
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", channelInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->channelInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", equivalentSpecifiers=["

    .line 1228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->equivalentSpecifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 1230
    .local v2, "ns":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    invoke-virtual {v2}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    .end local v2    # "ns":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    goto :goto_2

    .line 1232
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateToSupportNewRequest(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)V
    .locals 2
    .param p1, "ns"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 1031
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->equivalentSpecifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkAgent:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    if-nez v0, :cond_0

    .line 1033
    const-string v0, "WifiAwareDataPathStMgr"

    const-string v1, "updateToSupportNewRequest: null agent in CONFIRMED state!?"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return-void

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkAgent:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 1039
    :cond_1
    return-void
.end method
