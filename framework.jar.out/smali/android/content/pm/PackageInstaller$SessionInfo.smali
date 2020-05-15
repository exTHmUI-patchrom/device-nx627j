.class public Landroid/content/pm/PackageInstaller$SessionInfo;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public active:Z

.field public appIcon:Landroid/graphics/Bitmap;

.field public appLabel:Ljava/lang/CharSequence;

.field public appPackageName:Ljava/lang/String;

.field public grantedRuntimePermissions:[Ljava/lang/String;

.field public installFlags:I

.field public installLocation:I

.field public installReason:I

.field public installerPackageName:Ljava/lang/String;

.field public mode:I

.field public originatingUid:I

.field public originatingUri:Landroid/net/Uri;

.field public progress:F

.field public referrerUri:Landroid/net/Uri;

.field public resolvedBaseCodePath:Ljava/lang/String;

.field public sealed:Z

.field public sessionId:I

.field public sizeBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1770
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1463
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 1468
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 1469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 1470
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 1471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 1472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 1474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 1475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 1476
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 1477
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 1478
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 1479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 1481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    .line 1482
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    .line 1483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    .line 1484
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    .line 1485
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 1486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 1487
    return-void
.end method


# virtual methods
.method public createDetailsIntent()Landroid/content/Intent;
    .locals 3

    .line 1603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.SESSION_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1604
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.SESSION_ID"

    iget v2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1605
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1607
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 1742
    const/4 v0, 0x0

    return v0
.end method

.method public getAllocateAggressive()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1730
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAllowDowngrade()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1674
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAppIcon()Landroid/graphics/Bitmap;
    .locals 2

    .line 1571
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1575
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 1576
    invoke-interface {v0, v1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 1577
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1580
    .end local v0    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    goto :goto_1

    .line 1578
    :catch_0
    move-exception v0

    .line 1579
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1582
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAppLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1590
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 1563
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsIntent()Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1737
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->createDetailsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getDontKillApp()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1684
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getGrantedRuntimePermissions()[Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1664
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    return-object v0
.end method

.method public getInstallAsFullApp(Z)Z
    .locals 1
    .param p1, "isInstantApp"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1710
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInstallAsInstantApp(Z)Z
    .locals 1
    .param p1, "isInstantApp"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1697
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInstallAsVirtualPreload()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1720
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInstallLocation()I
    .locals 1

    .line 1624
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    return v0
.end method

.method public getInstallReason()I
    .locals 1

    .line 1549
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    return v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 1500
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 1617
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    return v0
.end method

.method public getOriginatingUid()I
    .locals 1

    .line 1647
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    return v0
.end method

.method public getOriginatingUri()Landroid/net/Uri;
    .locals 1

    .line 1640
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 1513
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    return v0
.end method

.method public getReferrerUri()Landroid/net/Uri;
    .locals 1

    .line 1654
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .line 1493
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 1633
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .line 1530
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1555
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isActive()Z

    move-result v0

    return v0
.end method

.method public isSealed()Z
    .locals 1

    .line 1540
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1747
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1748
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1749
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1750
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1751
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1752
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1754
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1755
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1756
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1757
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1758
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1759
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1761
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1762
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1763
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1765
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1766
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    return-void
.end method
