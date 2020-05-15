.class Lcom/android/internal/backup/LocalTransportParameters;
.super Landroid/util/KeyValueSettingObserver;
.source "LocalTransportParameters.java"


# static fields
.field private static final KEY_FAKE_ENCRYPTION_FLAG:Ljava/lang/String; = "fake_encryption_flag"

.field private static final KEY_NON_INCREMENTAL_ONLY:Ljava/lang/String; = "non_incremental_only"

.field private static final SETTING:Ljava/lang/String; = "backup_local_transport_parameters"

.field private static final TAG:Ljava/lang/String; = "LocalTransportParams"


# instance fields
.field private mFakeEncryptionFlag:Z

.field private mIsNonIncrementalOnly:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 35
    const-string v0, "backup_local_transport_parameters"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/KeyValueSettingObserver;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 47
    const-string v0, "backup_local_transport_parameters"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isFakeEncryptionFlag()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/android/internal/backup/LocalTransportParameters;->mFakeEncryptionFlag:Z

    return v0
.end method

.method isNonIncrementalOnly()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/android/internal/backup/LocalTransportParameters;->mIsNonIncrementalOnly:Z

    return v0
.end method

.method public update(Landroid/util/KeyValueListParser;)V
    .locals 2
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    .line 51
    const-string v0, "fake_encryption_flag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/backup/LocalTransportParameters;->mFakeEncryptionFlag:Z

    .line 52
    const-string/jumbo v0, "non_incremental_only"

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/backup/LocalTransportParameters;->mIsNonIncrementalOnly:Z

    .line 53
    return-void
.end method
