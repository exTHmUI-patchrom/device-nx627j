.class public final Landroid/os/storage/StorageVolume$ScopedAccessProviderContract;
.super Ljava/lang/Object;
.source "StorageVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScopedAccessProviderContract"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.documentsui.scopedAccess"

.field public static final COL_DIRECTORY:Ljava/lang/String; = "directory"

.field public static final COL_GRANTED:Ljava/lang/String; = "granted"

.field public static final COL_PACKAGE:Ljava/lang/String; = "package_name"

.field public static final COL_VOLUME_UUID:Ljava/lang/String; = "volume_uuid"

.field public static final TABLE_PACKAGES:Ljava/lang/String; = "packages"

.field public static final TABLE_PACKAGES_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_PACKAGES_COL_PACKAGE:I = 0x0

.field public static final TABLE_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final TABLE_PERMISSIONS_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_PERMISSIONS_COL_DIRECTORY:I = 0x2

.field public static final TABLE_PERMISSIONS_COL_GRANTED:I = 0x3

.field public static final TABLE_PERMISSIONS_COL_PACKAGE:I = 0x0

.field public static final TABLE_PERMISSIONS_COL_VOLUME_UUID:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 430
    const-string/jumbo v0, "package_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/storage/StorageVolume$ScopedAccessProviderContract;->TABLE_PACKAGES_COLUMNS:[Ljava/lang/String;

    .line 431
    const-string/jumbo v0, "package_name"

    const-string/jumbo v1, "volume_uuid"

    const-string v2, "directory"

    const-string v3, "granted"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/storage/StorageVolume$ScopedAccessProviderContract;->TABLE_PERMISSIONS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains constants only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
