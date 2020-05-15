.class public Lcom/android/internal/telephony/dataconnection/DcRequest;
.super Ljava/lang/Object;
.source "DcRequest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/telephony/dataconnection/DcRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DcRequest"

.field private static final sApnPriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final apnId:I

.field public final networkRequest:Landroid/net/NetworkRequest;

.field public final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V
    .locals 1
    .param p1, "nr"    # Landroid/net/NetworkRequest;
    .param p2, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcRequest;->initApnPriorities(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    .line 48
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcRequest;->priorityForApnId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    .line 49
    return-void
.end method

.method private apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I
    .locals 6
    .param p1, "nr"    # Landroid/net/NetworkRequest;

    .line 71
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 73
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-lez v1, :cond_0

    .line 74
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    return v3

    .line 80
    :cond_0
    const/4 v1, -0x1

    .line 82
    .local v1, "apnId":I
    const/4 v4, 0x0

    .line 83
    .local v4, "error":Z
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 84
    if-eq v1, v3, :cond_1

    const/4 v4, 0x1

    .line 85
    :cond_1
    const/4 v1, 0x0

    .line 87
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    if-eq v1, v3, :cond_3

    const/4 v2, 0x1

    .line 89
    .end local v4    # "error":Z
    .local v2, "error":Z
    move v4, v2

    .end local v2    # "error":Z
    .restart local v4    # "error":Z
    :cond_3
    const/4 v1, 0x1

    .line 91
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 92
    if-eq v1, v3, :cond_5

    const/4 v2, 0x1

    .line 93
    .end local v4    # "error":Z
    .restart local v2    # "error":Z
    move v4, v2

    .end local v2    # "error":Z
    .restart local v4    # "error":Z
    :cond_5
    const/4 v1, 0x2

    .line 95
    :cond_6
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 96
    if-eq v1, v3, :cond_7

    const/4 v2, 0x1

    .line 97
    .end local v4    # "error":Z
    .restart local v2    # "error":Z
    move v4, v2

    .end local v2    # "error":Z
    .restart local v4    # "error":Z
    :cond_7
    const/4 v1, 0x3

    .line 99
    :cond_8
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 100
    if-eq v1, v3, :cond_9

    const/4 v2, 0x1

    .line 101
    .end local v4    # "error":Z
    .restart local v2    # "error":Z
    move v4, v2

    .end local v2    # "error":Z
    .restart local v4    # "error":Z
    :cond_9
    const/4 v1, 0x6

    .line 103
    :cond_a
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 104
    if-eq v1, v3, :cond_b

    const/4 v2, 0x1

    .line 105
    .end local v4    # "error":Z
    .restart local v2    # "error":Z
    move v4, v2

    .end local v2    # "error":Z
    .restart local v4    # "error":Z
    :cond_b
    const/4 v1, 0x5

    .line 107
    :cond_c
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 108
    if-eq v1, v3, :cond_d

    const/4 v2, 0x1

    .line 109
    .end local v4    # "error":Z
    .restart local v2    # "error":Z
    move v4, v2

    .end local v2    # "error":Z
    .restart local v4    # "error":Z
    :cond_d
    const/4 v1, 0x7

    .line 111
    :cond_e
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 112
    if-eq v1, v3, :cond_f

    const/4 v2, 0x1

    .line 113
    .end local v4    # "error":Z
    .restart local v2    # "error":Z
    move v4, v2

    .end local v2    # "error":Z
    .restart local v4    # "error":Z
    :cond_f
    const/16 v1, 0x8

    .line 115
    :cond_10
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 116
    if-eq v1, v3, :cond_11

    const/4 v2, 0x1

    .line 117
    .end local v4    # "error":Z
    .restart local v2    # "error":Z
    move v4, v2

    .end local v2    # "error":Z
    .restart local v4    # "error":Z
    :cond_11
    const/4 v1, -0x1

    .line 118
    const-string v2, "RCS APN type not yet supported"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    .line 120
    :cond_12
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 121
    if-eq v1, v3, :cond_13

    const/4 v2, 0x1

    .line 122
    .end local v4    # "error":Z
    .restart local v2    # "error":Z
    move v4, v2

    .end local v2    # "error":Z
    .restart local v4    # "error":Z
    :cond_13
    const/4 v1, -0x1

    .line 123
    const-string v2, "XCAP APN type not yet supported"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    .line 125
    :cond_14
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 126
    if-eq v1, v3, :cond_15

    const/4 v2, 0x1

    .line 127
    .end local v4    # "error":Z
    .restart local v2    # "error":Z
    move v4, v2

    .end local v2    # "error":Z
    .restart local v4    # "error":Z
    :cond_15
    const/16 v1, 0x9

    .line 129
    :cond_16
    if-eqz v4, :cond_17

    .line 134
    const-string v2, "Multiple apn types specified in request - result is unspecified!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    .line 136
    :cond_17
    if-ne v1, v3, :cond_18

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported NetworkRequest in Telephony: nr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    .line 139
    :cond_18
    return v1
.end method

.method private initApnPriorities(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 146
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 147
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "networkConfigStrings":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 151
    .local v4, "networkConfigString":Ljava/lang/String;
    new-instance v5, Landroid/net/NetworkConfig;

    invoke-direct {v5, v4}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 152
    .local v5, "networkConfig":Landroid/net/NetworkConfig;
    iget v6, v5, Landroid/net/NetworkConfig;->type:I

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForType(I)I

    move-result v6

    .line 153
    .local v6, "apnId":I
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v5, Landroid/net/NetworkConfig;->priority:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .end local v4    # "networkConfigString":Ljava/lang/String;
    .end local v5    # "networkConfig":Landroid/net/NetworkConfig;
    .end local v6    # "apnId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "networkConfigStrings":[Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 165
    const-string v0, "DcRequest"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method private priorityForApnId(I)I
    .locals 2
    .param p1, "apnId"    # I

    .line 160
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 161
    .local v0, "priority":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/dataconnection/DcRequest;)I
    .locals 2
    .param p1, "o"    # Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 67
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcRequest;->compareTo(Lcom/android/internal/telephony/dataconnection/DcRequest;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", apnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
