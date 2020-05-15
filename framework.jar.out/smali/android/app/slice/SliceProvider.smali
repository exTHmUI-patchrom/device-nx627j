.class public abstract Landroid/app/slice/SliceProvider;
.super Landroid/content/ContentProvider;
.source "SliceProvider.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final EXTRA_BIND_URI:Ljava/lang/String; = "slice_uri"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "slice_intent"

.field public static final EXTRA_PKG:Ljava/lang/String; = "pkg"

.field public static final EXTRA_PROVIDER_PKG:Ljava/lang/String; = "provider_pkg"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_SLICE:Ljava/lang/String; = "slice"

.field public static final EXTRA_SLICE_DESCENDANTS:Ljava/lang/String; = "slice_descendants"

.field public static final EXTRA_SUPPORTED_SPECS:Ljava/lang/String; = "supported_specs"

.field public static final METHOD_GET_DESCENDANTS:Ljava/lang/String; = "get_descendants"

.field public static final METHOD_GET_PERMISSIONS:Ljava/lang/String; = "get_permissions"

.field public static final METHOD_MAP_INTENT:Ljava/lang/String; = "map_slice"

.field public static final METHOD_MAP_ONLY_INTENT:Ljava/lang/String; = "map_only"

.field public static final METHOD_PIN:Ljava/lang/String; = "pin"

.field public static final METHOD_SLICE:Ljava/lang/String; = "bind_slice"

.field public static final METHOD_UNPIN:Ljava/lang/String; = "unpin"

.field private static final SLICE_BIND_ANR:J = 0x7d0L

.field public static final SLICE_TYPE:Ljava/lang/String; = "vnd.android.slice"

.field private static final TAG:Ljava/lang/String; = "SliceProvider"


# instance fields
.field private final mAnr:Ljava/lang/Runnable;

.field private final mAutoGrantPermissions:[Ljava/lang/String;

.field private mCallback:Ljava/lang/String;

.field private mSliceManager:Landroid/app/slice/SliceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 188
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 551
    new-instance v0, Landroid/app/slice/-$$Lambda$SliceProvider$bIgM5f4PsMvz_YYWEeFTjvTqevw;

    invoke-direct {v0, p0}, Landroid/app/slice/-$$Lambda$SliceProvider$bIgM5f4PsMvz_YYWEeFTjvTqevw;-><init>(Landroid/app/slice/SliceProvider;)V

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    .line 189
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 190
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "autoGrantPermissions"    # [Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 551
    new-instance v0, Landroid/app/slice/-$$Lambda$SliceProvider$bIgM5f4PsMvz_YYWEeFTjvTqevw;

    invoke-direct {v0, p0}, Landroid/app/slice/-$$Lambda$SliceProvider$bIgM5f4PsMvz_YYWEeFTjvTqevw;-><init>(Landroid/app/slice/SliceProvider;)V

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    .line 185
    iput-object p1, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 186
    return-void
.end method

.method public static createPermissionIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.REQUEST_SLICE_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SlicePermissionActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 512
    const-string/jumbo v1, "slice_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 513
    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const-string/jumbo v1, "provider_pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 517
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 516
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 519
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 528
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const v1, 0x10405fc

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 530
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 528
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 532
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown calling app"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;
    .locals 7
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callingPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceSpec;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 448
    .local p2, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    if-eqz p3, :cond_0

    .line 449
    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "pkg":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mSliceManager:Landroid/app/slice/SliceManager;

    iget-object v6, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    move-object v2, p1

    move-object v3, v0

    move v4, p5

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/slice/SliceManager;->enforceSlicePermission(Landroid/net/Uri;Ljava/lang/String;II[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    nop

    .line 456
    const-string/jumbo v1, "onBindSlice"

    iput-object v1, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 457
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 459
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/app/slice/SliceProvider;->onBindSliceStrict(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    return-object v1

    .line 461
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v1

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v0}, Landroid/app/slice/SliceProvider;->createPermissionSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/slice/Slice;

    move-result-object v2

    return-object v2
.end method

.method private handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 420
    const-string/jumbo v0, "onGetSliceDescendants"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 421
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private handlePinSlice(Landroid/net/Uri;)V
    .locals 4
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 425
    const-string/jumbo v0, "onSlicePinned"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 426
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onSlicePinned(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    nop

    .line 432
    return-void

    .line 430
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v0
.end method

.method private handleUnpinSlice(Landroid/net/Uri;)V
    .locals 4
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 435
    const-string/jumbo v0, "onSliceUnpinned"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 436
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onSliceUnpinned(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 441
    nop

    .line 442
    return-void

    .line 440
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v0
.end method

.method public static synthetic lambda$new$0(Landroid/app/slice/SliceProvider;)V
    .locals 3

    .line 552
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 553
    const-string v0, "SliceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out while handling slice callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method private onBindSliceStrict(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;
    .locals 2
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 539
    .local p2, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 541
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 542
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 543
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 541
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 545
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Landroid/app/slice/SliceProvider;->onBindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 545
    return-object v1

    .line 547
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 194
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 195
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mSliceManager:Landroid/app/slice/SliceManager;

    .line 196
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 357
    const-string v0, "bind_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string/jumbo v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 359
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "supported_specs"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 361
    .local v7, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, "callingPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 363
    .local v9, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 365
    .local v10, "callingPid":I
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    move v6, v10

    invoke-direct/range {v1 .. v6}, Landroid/app/slice/SliceProvider;->handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;

    move-result-object v1

    .line 366
    .local v1, "s":Landroid/app/slice/Slice;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 367
    .local v2, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "slice"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 368
    return-object v2

    .line 369
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "s":Landroid/app/slice/Slice;
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v7    # "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "callingUid":I
    .end local v10    # "callingPid":I
    :cond_0
    const-string/jumbo v0, "map_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 370
    const-string/jumbo v0, "slice_intent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 371
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    return-object v1

    .line 372
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v8

    .line 373
    .local v8, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "supported_specs"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 374
    .local v9, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v10, v2

    .line 375
    .local v10, "b":Landroid/os/Bundle;
    if-eqz v8, :cond_2

    .line 376
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    .line 377
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 376
    move-object v2, p0

    move-object v3, v8

    move-object v4, v9

    invoke-direct/range {v2 .. v7}, Landroid/app/slice/SliceProvider;->handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;

    move-result-object v1

    .line 378
    .restart local v1    # "s":Landroid/app/slice/Slice;
    const-string/jumbo v2, "slice"

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 379
    .end local v1    # "s":Landroid/app/slice/Slice;
    goto :goto_0

    .line 380
    :cond_2
    const-string/jumbo v2, "slice"

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 382
    :goto_0
    return-object v10

    .line 383
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    .end local v10    # "b":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v0, "map_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 384
    const-string/jumbo v0, "slice_intent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 385
    .restart local v0    # "intent":Landroid/content/Intent;
    if-nez v0, :cond_4

    return-object v1

    .line 386
    :cond_4
    invoke-virtual {p0, v0}, Landroid/app/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 387
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 388
    .restart local v2    # "b":Landroid/os/Bundle;
    const-string/jumbo v3, "slice"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 389
    return-object v2

    .line 390
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "b":Landroid/os/Bundle;
    :cond_5
    const-string/jumbo v0, "pin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3e8

    if-eqz v0, :cond_7

    .line 391
    const-string/jumbo v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 392
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 395
    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->handlePinSlice(Landroid/net/Uri;)V

    .line 396
    .end local v0    # "uri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 393
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_6
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system can pin/unpin slices"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_7
    const-string/jumbo v0, "unpin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 397
    const-string/jumbo v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 398
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 401
    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->handleUnpinSlice(Landroid/net/Uri;)V

    .line 402
    .end local v0    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 399
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_8
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system can pin/unpin slices"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_9
    const-string v0, "get_descendants"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 403
    const-string/jumbo v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 404
    .restart local v0    # "uri":Landroid/net/Uri;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 405
    .local v1, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "slice_descendants"

    new-instance v3, Ljava/util/ArrayList;

    .line 406
    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 405
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 407
    return-object v1

    .line 408
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_a
    const-string v0, "get_permissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 409
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 412
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 414
    return-object v0

    .line 410
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system can get permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_c
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public createPermissionSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/slice/Slice;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sliceUri"    # Landroid/net/Uri;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 471
    const-string/jumbo v0, "onCreatePermissionRequest"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 472
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/app/slice/SliceProvider;->onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    .local v0, "action":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 477
    nop

    .line 476
    nop

    .line 478
    new-instance v1, Landroid/app/slice/Slice$Builder;

    invoke-direct {v1, p2}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 479
    .local v1, "parent":Landroid/app/slice/Slice$Builder;
    new-instance v2, Landroid/app/slice/Slice$Builder;

    invoke-direct {v2, v1}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    const v3, 0x10804be

    .line 480
    invoke-static {p1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 482
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 480
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v2

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "shortcut"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/slice/Slice$Builder;

    invoke-direct {v3, v1}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    .line 484
    invoke-virtual {v3}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v5}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    move-result-object v2

    .line 486
    .local v2, "childAction":Landroid/app/slice/Slice$Builder;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 487
    .local v3, "tv":Landroid/util/TypedValue;
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v6, 0x103012b

    invoke-direct {v4, p1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 488
    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v6, 0x1010435

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 489
    iget v4, v3, Landroid/util/TypedValue;->data:I

    .line 491
    .local v4, "deviceDefaultAccent":I
    new-instance v6, Landroid/app/slice/Slice$Builder;

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string/jumbo v8, "permission"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const v7, 0x10802f7

    .line 492
    invoke-static {p1, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 494
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 492
    invoke-virtual {v6, v7, v5, v8}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v6

    .line 495
    invoke-static {p1, p3}, Landroid/app/slice/SliceProvider;->getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 496
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 495
    invoke-virtual {v6, v7, v5, v8}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v6

    const-string v7, "color"

    .line 498
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 497
    invoke-virtual {v6, v4, v7, v8}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v6

    .line 499
    invoke-virtual {v2}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    move-result-object v6

    .line 500
    invoke-virtual {v6}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v6

    .line 491
    invoke-virtual {v1, v6, v5}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    .line 501
    const-string/jumbo v5, "permission_request"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v5

    return-object v5

    .line 476
    .end local v0    # "action":Landroid/app/PendingIntent;
    .end local v1    # "parent":Landroid/app/slice/Slice$Builder;
    .end local v2    # "childAction":Landroid/app/slice/Slice$Builder;
    .end local v3    # "tv":Landroid/util/TypedValue;
    .end local v4    # "deviceDefaultAccent":I
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 352
    const-string/jumbo v0, "vnd.android.slice"

    return-object v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindSlice(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;
    .locals 1
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    .local p2, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;
    .locals 1
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 216
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/slice/SliceProvider;->onBindSlice(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 306
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/app/slice/SliceProvider;->createPermissionIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 271
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 288
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This provider has not implemented intent to uri mapping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSlicePinned(Landroid/net/Uri;)V
    .locals 0
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 247
    return-void
.end method

.method public onSliceUnpinned(Landroid/net/Uri;)V
    .locals 0
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 258
    return-void
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 313
    const/4 v0, 0x0

    return v0
.end method
