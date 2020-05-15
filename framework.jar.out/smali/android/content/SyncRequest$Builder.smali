.class public Landroid/content/SyncRequest$Builder;
.super Ljava/lang/Object;
.source "SyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final SYNC_TARGET_ADAPTER:I = 0x2

.field private static final SYNC_TARGET_UNKNOWN:I = 0x0

.field private static final SYNC_TYPE_ONCE:I = 0x2

.field private static final SYNC_TYPE_PERIODIC:I = 0x1

.field private static final SYNC_TYPE_UNKNOWN:I


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mCustomExtras:Landroid/os/Bundle;

.field private mDisallowMetered:Z

.field private mExpedited:Z

.field private mIgnoreBackoff:Z

.field private mIgnoreSettings:Z

.field private mIsManual:Z

.field private mNoRetry:Z

.field private mRequiresCharging:Z

.field private mSyncConfigExtras:Landroid/os/Bundle;

.field private mSyncFlexTimeSecs:J

.field private mSyncRunTimeSecs:J

.field private mSyncTarget:I

.field private mSyncType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 218
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    .line 255
    return-void
.end method

.method static synthetic access$100(Landroid/content/SyncRequest$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .line 181
    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    return-wide v0
.end method

.method static synthetic access$1000(Landroid/content/SyncRequest$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .line 181
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    return v0
.end method

.method static synthetic access$200(Landroid/content/SyncRequest$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .line 181
    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/content/SyncRequest$Builder;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .line 181
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/SyncRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .line 181
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/SyncRequest$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .line 181
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    return v0
.end method

.method static synthetic access$600(Landroid/content/SyncRequest$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .line 181
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    return v0
.end method

.method static synthetic access$700(Landroid/content/SyncRequest$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .line 181
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    return v0
.end method

.method static synthetic access$800(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .line 181
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .line 181
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method private setupInterval(JJ)V
    .locals 2
    .param p1, "at"    # J
    .param p3, "before"    # J

    .line 326
    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    .line 330
    iput-wide p1, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    .line 331
    iput-wide p3, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    .line 332
    return-void

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified run time for the sync must be after the specified flex time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/content/SyncRequest;
    .locals 3

    .line 504
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 505
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    .line 509
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 510
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v2, "ignore_backoff"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 513
    :cond_1
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v2, "allow_metered"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 516
    :cond_2
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mRequiresCharging:Z

    if-eqz v0, :cond_3

    .line 517
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "require_charging"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 519
    :cond_3
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    if-eqz v0, :cond_4

    .line 520
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v2, "ignore_settings"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 522
    :cond_4
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    if-eqz v0, :cond_5

    .line 523
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v2, "do_not_retry"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 525
    :cond_5
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    if-eqz v0, :cond_6

    .line 526
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v2, "expedited"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 528
    :cond_6
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    if-eqz v0, :cond_7

    .line 529
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v2, "ignore_backoff"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 530
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v2, "ignore_settings"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 532
    :cond_7
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-ne v0, v1, :cond_9

    .line 534
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/ContentResolver;->invalidPeriodicExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 535
    invoke-static {v0}, Landroid/content/ContentResolver;->invalidPeriodicExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    .line 536
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal extras were set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_9
    :goto_0
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    if-eqz v0, :cond_a

    .line 544
    new-instance v0, Landroid/content/SyncRequest;

    invoke-direct {v0, p0}, Landroid/content/SyncRequest;-><init>(Landroid/content/SyncRequest$Builder;)V

    return-object v0

    .line 541
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an adapter with setSyncAdapter(Account, String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisallowMetered(Z)Landroid/content/SyncRequest$Builder;
    .locals 2
    .param p1, "disallow"    # Z

    .line 341
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setDisallowMetered(true) after having specified that settings are ignored."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    .line 346
    return-object p0
.end method

.method public setExpedited(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "expedited"    # Z

    .line 491
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    .line 492
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 415
    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    .line 416
    return-object p0
.end method

.method public setIgnoreBackoff(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "ignoreBackoff"    # Z

    .line 465
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    .line 466
    return-object p0
.end method

.method public setIgnoreSettings(Z)Landroid/content/SyncRequest$Builder;
    .locals 2
    .param p1, "ignoreSettings"    # Z

    .line 445
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setIgnoreSettings(true) after having specified sync settings with this builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    .line 450
    return-object p0
.end method

.method public setManual(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "isManual"    # Z

    .line 478
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    .line 479
    return-object p0
.end method

.method public setNoRetry(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "noRetry"    # Z

    .line 429
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    .line 430
    return-object p0
.end method

.method public setRequiresCharging(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "requiresCharging"    # Z

    .line 354
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mRequiresCharging:Z

    .line 355
    return-object p0
.end method

.method public setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .line 367
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    if-nez v0, :cond_2

    .line 370
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_1
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    .line 374
    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    .line 375
    iput-object p2, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    .line 376
    return-object p0

    .line 368
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sync target has already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public syncOnce()Landroid/content/SyncRequest$Builder;
    .locals 2

    .line 266
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 270
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    .line 271
    return-object p0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sync type has already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public syncPeriodic(JJ)Landroid/content/SyncRequest$Builder;
    .locals 2
    .param p1, "pollFrequency"    # J
    .param p3, "beforeSeconds"    # J

    .line 317
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 321
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    .line 322
    return-object p0

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sync type has already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
