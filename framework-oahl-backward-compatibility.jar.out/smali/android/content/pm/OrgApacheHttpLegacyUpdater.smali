.class public Landroid/content/pm/OrgApacheHttpLegacyUpdater;
.super Landroid/content/pm/PackageSharedLibraryUpdater;
.source "OrgApacheHttpLegacyUpdater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/content/pm/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 44
    invoke-static {p1}, Landroid/content/pm/OrgApacheHttpLegacyUpdater;->apkTargetsApiLevelLessThanOrEqualToOMR1(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "org.apache.http.legacy"

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/OrgApacheHttpLegacyUpdater;->prefixRequiredLibrary(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method
