.class public Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.super Lcom/android/internal/telephony/CellBroadcastHandler;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final VDBG:Z = false


# instance fields
.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 45
    const-string v0, "GsmCellBroadcastHandler"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 46
    iget-object v0, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 47
    return-void
.end method

.method private handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 92
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 109
    .local v1, "receivedPdu":[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 111
    .local v2, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 112
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    .line 111
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "plmn":Ljava/lang/String;
    const/4 v4, -0x1

    .line 114
    .local v4, "lac":I
    const/4 v5, -0x1

    .line 115
    .local v5, "cid":I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    .line 119
    .local v6, "cl":Landroid/telephony/CellLocation;
    instance-of v7, v6, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v7, :cond_0

    .line 120
    move-object v7, v6

    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    .line 121
    .local v7, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v8

    move v4, v8

    .line 122
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v8

    move v5, v8

    .line 126
    .end local v7    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v7

    if-eqz v7, :cond_1

    packed-switch v7, :pswitch_data_0

    .line 138
    new-instance v7, Landroid/telephony/SmsCbLocation;

    invoke-direct {v7, v3}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :pswitch_0
    new-instance v7, Landroid/telephony/SmsCbLocation;

    const/4 v8, -0x1

    invoke-direct {v7, v3, v4, v8}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 129
    .local v7, "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 133
    .end local v7    # "location":Landroid/telephony/SmsCbLocation;
    :cond_1
    :pswitch_1
    new-instance v7, Landroid/telephony/SmsCbLocation;

    invoke-direct {v7, v3, v4, v5}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 134
    .restart local v7    # "location":Landroid/telephony/SmsCbLocation;
    nop

    .line 138
    :goto_0
    nop

    .line 143
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v8

    .line 144
    .local v8, "pageCount":I
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-le v8, v10, :cond_5

    .line 146
    new-instance v11, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    invoke-direct {v11, v2, v7}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 149
    .local v11, "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[B

    .line 151
    .local v12, "pdus":[[B
    if-nez v12, :cond_2

    .line 154
    new-array v13, v8, [[B

    move-object v12, v13

    .line 156
    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v13

    sub-int/2addr v13, v10

    aput-object v1, v12, v13

    .line 163
    array-length v10, v12

    :goto_1
    if-ge v9, v10, :cond_4

    aget-object v13, v12, v9

    .line 164
    .local v13, "pdu":[B
    if-nez v13, :cond_3

    .line 166
    const-string v9, "still missing pdu"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 167
    return-object v0

    .line 163
    .end local v13    # "pdu":[B
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 172
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v11    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    goto :goto_2

    .line 175
    .end local v12    # "pdus":[[B
    :cond_5
    new-array v10, v10, [[B

    move-object v12, v10

    .line 176
    .restart local v12    # "pdus":[[B
    aput-object v1, v12, v9

    .line 182
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 184
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 185
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    .line 187
    .local v10, "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    invoke-virtual {v10, v3, v4, v5}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v11

    if-nez v11, :cond_6

    .line 188
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 190
    .end local v10    # "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    :cond_6
    goto :goto_3

    .line 192
    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-static {v10, v2, v7, v12}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Landroid/content/Context;Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    .line 194
    .end local v1    # "receivedPdu":[B
    .end local v2    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v3    # "plmn":Ljava/lang/String;
    .end local v4    # "lac":I
    .end local v5    # "cid":I
    .end local v6    # "cl":Landroid/telephony/CellLocation;
    .end local v7    # "location":Landroid/telephony/SmsCbLocation;
    .end local v8    # "pageCount":I
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    .end local v12    # "pdus":[[B
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Error in decoding SMS CB pdu"

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 63
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->start()V

    .line 64
    return-object v0
.end method


# virtual methods
.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;

    move-result-object v0

    .line 77
    .local v0, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 79
    const/4 v1, 0x1

    return v1

    .line 83
    .end local v0    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleSmsMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method protected onQuitting()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->onQuitting()V

    .line 53
    return-void
.end method
