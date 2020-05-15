.class public abstract Lcom/android/ims/internal/uce/UceServiceBase;
.super Ljava/lang/Object;
.source "UceServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
    }
.end annotation


# instance fields
.field private mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;-><init>(Lcom/android/ims/internal/uce/UceServiceBase;Lcom/android/ims/internal/uce/UceServiceBase$1;)V

    iput-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    return-object v0
.end method

.method protected onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 1
    .param p1, "optionsListener"    # Lcom/android/ims/internal/uce/options/IOptionsListener;
    .param p2, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .locals 1
    .param p1, "optionsListener"    # Lcom/android/ims/internal/uce/options/IOptionsListener;
    .param p2, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .param p3, "iccId"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 1
    .param p1, "presServiceListener"    # Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .param p2, "presServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .locals 1
    .param p1, "presServiceListener"    # Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .param p2, "presServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .param p3, "iccId"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroyOptionsService(I)V
    .locals 0
    .param p1, "cdServiceHandle"    # I

    .line 158
    return-void
.end method

.method protected onDestroyPresService(I)V
    .locals 0
    .param p1, "presServiceHdl"    # I

    .line 176
    return-void
.end method

.method protected onGetOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 1

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetOptionsService(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 1
    .param p1, "iccId"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 1

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetPresenceService(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 1
    .param p1, "iccId"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetServiceStatus()Z
    .locals 1

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method protected onIsServiceStarted()Z
    .locals 1

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected onServiceStart(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z
    .locals 1
    .param p1, "uceListener"    # Lcom/android/ims/internal/uce/uceservice/IUceListener;

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method protected onStopService()Z
    .locals 1

    .line 135
    const/4 v0, 0x0

    return v0
.end method
