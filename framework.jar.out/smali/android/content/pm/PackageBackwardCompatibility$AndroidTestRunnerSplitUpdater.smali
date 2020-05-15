.class public Landroid/content/pm/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;
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
    name = "AndroidTestRunnerSplitUpdater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Landroid/content/pm/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 180
    const-string v0, "android.test.runner"

    const-string v1, "android.test.mock"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;->prefixImplicitDependency(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method
