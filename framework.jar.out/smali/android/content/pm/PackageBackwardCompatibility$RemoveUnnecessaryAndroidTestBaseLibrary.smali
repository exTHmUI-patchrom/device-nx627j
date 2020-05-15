.class public Landroid/content/pm/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;
.super Landroid/content/pm/PackageSharedLibraryUpdater;
.source "PackageBackwardCompatibility.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageBackwardCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveUnnecessaryAndroidTestBaseLibrary"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Landroid/content/pm/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 209
    const-string v0, "android.test.base"

    invoke-static {p1, v0}, Landroid/content/pm/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;->removeLibrary(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 210
    return-void
.end method
