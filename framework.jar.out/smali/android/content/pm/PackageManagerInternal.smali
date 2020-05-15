.class public abstract Landroid/content/pm/PackageManagerInternal;
.super Ljava/lang/Object;
.source "PackageManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;,
        Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;,
        Landroid/content/pm/PackageManagerInternal$PackagesProvider;,
        Landroid/content/pm/PackageManagerInternal$PackageListObserver;,
        Landroid/content/pm/PackageManagerInternal$KnownPackage;
    }
.end annotation


# static fields
.field public static final PACKAGE_BROWSER:I = 0x4

.field public static final PACKAGE_INSTALLER:I = 0x2

.field public static final PACKAGE_SETUP_WIZARD:I = 0x1

.field public static final PACKAGE_SYSTEM:I = 0x0

.field public static final PACKAGE_SYSTEM_TEXT_CLASSIFIER:I = 0x5

.field public static final PACKAGE_VERIFIER:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addIsolatedUid(II)V
.end method

.method public abstract canAccessComponent(ILandroid/content/ComponentName;I)Z
.end method

.method public abstract canAccessInstantApps(II)Z
.end method

.method public abstract filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getDefaultHomeActivity(I)Landroid/content/ComponentName;
.end method

.method public abstract getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
.end method

.method public abstract getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public abstract getInstantAppPackageName(I)Ljava/lang/String;
.end method

.method public abstract getKnownPackageName(II)Ljava/lang/String;
.end method

.method public abstract getNameForUid(I)Ljava/lang/String;
.end method

.method public abstract getOverlayPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
.end method

.method public abstract getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;
.end method

.method public getPackageList()Landroid/content/pm/PackageList;
    .locals 1

    .line 535
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Landroid/content/pm/PackageList;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Landroid/content/pm/PackageList;
.end method

.method public abstract getPackageTargetSdkVersion(Ljava/lang/String;)I
.end method

.method public abstract getPackageUid(Ljava/lang/String;II)I
.end method

.method public abstract getPermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract getSetupWizardPackageName()Ljava/lang/String;
.end method

.method public abstract getSuspendedDialogMessage(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getTargetPackageNames(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUidTargetSdkVersion(I)I
.end method

.method public abstract grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V
.end method

.method public abstract grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
.end method

.method public abstract grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V
.end method

.method public abstract grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
.end method

.method public abstract grantEphemeralAccess(ILandroid/content/Intent;II)V
.end method

.method public abstract grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract hasInstantApplicationMetadata(Ljava/lang/String;I)Z
.end method

.method public abstract hasSignatureCapability(III)Z
    .param p3    # I
        .annotation build Landroid/content/pm/PackageParser$SigningDetails$CertCapabilities;
        .end annotation
    .end param
.end method

.method public abstract isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z
.end method

.method public abstract isDataRestoreSafe([BLjava/lang/String;)Z
.end method

.method public abstract isInstantApp(Ljava/lang/String;I)Z
.end method

.method public abstract isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z
.end method

.method public abstract isLegacySystemApp(Landroid/content/pm/PackageParser$Package;)Z
.end method

.method public abstract isPackageDataProtected(ILjava/lang/String;)Z
.end method

.method public abstract isPackageEphemeral(ILjava/lang/String;)Z
.end method

.method public abstract isPackagePersistent(Ljava/lang/String;)Z
.end method

.method public abstract isPackageStateProtected(Ljava/lang/String;I)Z
.end method

.method public abstract isPackageSuspended(Ljava/lang/String;I)Z
.end method

.method public abstract isPermissionsReviewRequired(Ljava/lang/String;I)Z
.end method

.method public abstract isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z
.end method

.method public abstract notifyPackageUse(Ljava/lang/String;I)V
.end method

.method public abstract pruneInstantApps()V
.end method

.method public abstract queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentServices(Landroid/content/Intent;III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeIsolatedUid(I)V
.end method

.method public abstract removePackageListObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
.end method

.method public abstract requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
.end method

.method public abstract resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V
.end method

.method public abstract setKeepUninstalledPackages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
.end method

.method public abstract setUseOpenWifiAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V
.end method

.method public abstract wasPackageEverLaunched(Ljava/lang/String;I)Z
.end method
