.class public Landroid/app/BroadcastOptions;
.super Ljava/lang/Object;
.source "BroadcastOptions.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field static final KEY_DONT_SEND_TO_RESTRICTED_APPS:Ljava/lang/String; = "android:broadcast.dontSendToRestrictedApps"

.field static final KEY_MAX_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.maxManifestReceiverApiLevel"

.field static final KEY_MIN_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.minManifestReceiverApiLevel"

.field static final KEY_TEMPORARY_APP_WHITELIST_DURATION:Ljava/lang/String; = "android:broadcast.temporaryAppWhitelistDuration"


# instance fields
.field private mDontSendToRestrictedApps:Z

.field private mMaxManifestReceiverApiLevel:I

.field private mMinManifestReceiverApiLevel:I

.field private mTemporaryAppWhitelistDuration:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 34
    const/16 v1, 0x2710

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 35
    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 34
    const/16 v1, 0x2710

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 35
    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    .line 72
    const-string v2, "android:broadcast.temporaryAppWhitelistDuration"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    .line 73
    const-string v2, "android:broadcast.minManifestReceiverApiLevel"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 74
    const-string v2, "android:broadcast.maxManifestReceiverApiLevel"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 76
    const-string v1, "android:broadcast.dontSendToRestrictedApps"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    .line 77
    return-void
.end method

.method public static makeBasic()Landroid/app/BroadcastOptions;
    .locals 1

    .line 63
    new-instance v0, Landroid/app/BroadcastOptions;

    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    .line 64
    .local v0, "opts":Landroid/app/BroadcastOptions;
    return-object v0
.end method


# virtual methods
.method public getMaxManifestReceiverApiLevel()I
    .locals 1

    .line 130
    iget v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    return v0
.end method

.method public getMinManifestReceiverApiLevel()I
    .locals 1

    .line 112
    iget v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    return v0
.end method

.method public getTemporaryAppWhitelistDuration()J
    .locals 2

    .line 94
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    return-wide v0
.end method

.method public isDontSendToRestrictedApps()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    return v0
.end method

.method public setDontSendToRestrictedApps(Z)V
    .locals 0
    .param p1, "dontSendToRestrictedApps"    # Z

    .line 139
    iput-boolean p1, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    .line 140
    return-void
.end method

.method public setMaxManifestReceiverApiLevel(I)V
    .locals 0
    .param p1, "apiLevel"    # I

    .line 122
    iput p1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 123
    return-void
.end method

.method public setMinManifestReceiverApiLevel(I)V
    .locals 0
    .param p1, "apiLevel"    # I

    .line 104
    iput p1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 105
    return-void
.end method

.method public setTemporaryAppWhitelistDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 86
    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    .line 87
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, "b":Landroid/os/Bundle;
    iget-wide v1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 161
    const-string v1, "android:broadcast.temporaryAppWhitelistDuration"

    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 163
    :cond_0
    iget v1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    if-eqz v1, :cond_1

    .line 164
    const-string v1, "android:broadcast.minManifestReceiverApiLevel"

    iget v2, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    :cond_1
    iget v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    const/16 v2, 0x2710

    if-eq v1, v2, :cond_2

    .line 167
    const-string v1, "android:broadcast.maxManifestReceiverApiLevel"

    iget v2, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    :cond_2
    iget-boolean v1, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    if-eqz v1, :cond_3

    .line 170
    const-string v1, "android:broadcast.dontSendToRestrictedApps"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    :cond_3
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    return-object v1
.end method
