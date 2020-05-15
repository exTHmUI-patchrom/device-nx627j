.class public Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
.super Lcom/android/internal/telephony/Connection;
.source "ImsExternalConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;
    }
.end annotation


# static fields
.field private static final CONFERENCE_PREFIX:Ljava/lang/String; = "conf"


# instance fields
.field private mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

.field private mCallId:I

.field private final mContext:Landroid/content/Context;

.field private mIsPullable:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalAddress:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/Phone;ILandroid/net/Uri;Z)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "callId"    # I
    .param p3, "address"    # Landroid/net/Uri;
    .param p4, "isPullable"    # Z

    .line 85
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    .line 86
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    .line 88
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    .line 89
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setExternalConnectionAddress(Landroid/net/Uri;)V

    .line 90
    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mNumberPresentation:I

    .line 91
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    .line 93
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->rebuildCapabilities()V

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setActive()V

    .line 95
    return-void
.end method

.method private rebuildCapabilities()V
    .locals 2

    .line 273
    const/16 v0, 0x10

    .line 274
    .local v0, "capabilities":I
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    if-eqz v1, :cond_0

    .line 275
    or-int/lit8 v0, v0, 0x20

    .line 278
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setConnectionCapabilities(I)V

    .line 279
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method public cancelPostDial()V
    .locals 0

    .line 153
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Deflect is not supported for external calls"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    return-object v0
.end method

.method public getCallId()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .line 111
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 2

    .line 116
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mNumberPresentation:I

    return v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public isMultiparty()Z
    .locals 1

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public proceedAfterWaitChar()V
    .locals 0

    .line 143
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 148
    return-void
.end method

.method public pullExternalCall()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;

    .line 185
    .local v1, "listener":Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;->onPullExternalCall(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V

    .line 186
    .end local v1    # "listener":Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;
    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public separate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method public setActive()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    if-nez v0, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->setActive()V

    .line 197
    return-void
.end method

.method public setExternalConnectionAddress(Landroid/net/Uri;)V
    .locals 2
    .param p1, "address"    # Landroid/net/Uri;

    .line 227
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mOriginalAddress:Landroid/net/Uri;

    .line 229
    const-string v0, "sip"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mContext:Landroid/content/Context;

    const v1, 0x104010f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCnapName:Ljava/lang/String;

    .line 232
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCnapNamePresentation:I

    .line 233
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mAddress:Ljava/lang/String;

    .line 234
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mNumberPresentation:I

    .line 235
    return-void

    .line 238
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertSipUriToTelUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 239
    .local v0, "telUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mAddress:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setIsPullable(Z)V
    .locals 0
    .param p1, "isPullable"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    .line 217
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->rebuildCapabilities()V

    .line 218
    return-void
.end method

.method public setTerminated()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    if-nez v0, :cond_0

    .line 204
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->setTerminated()V

    .line 208
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 257
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "[ImsExternalConnection dialogCallId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 261
    const-string v1, "Active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 263
    const-string v1, "Disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_1
    :goto_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
