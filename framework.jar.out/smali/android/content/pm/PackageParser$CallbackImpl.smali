.class public final Landroid/content/pm/PackageParser$CallbackImpl;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/content/pm/PackageParser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackImpl"
.end annotation


# instance fields
.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object p1, p0, Landroid/content/pm/PackageParser$CallbackImpl;->mPm:Landroid/content/pm/PackageManager;

    .line 595
    return-void
.end method


# virtual methods
.method public getOverlayApks(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "targetPackageName"    # Ljava/lang/String;

    .line 606
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .line 602
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .line 598
    iget-object v0, p0, Landroid/content/pm/PackageParser$CallbackImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
