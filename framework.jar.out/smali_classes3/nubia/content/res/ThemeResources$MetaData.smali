.class public final Lnubia/content/res/ThemeResources$MetaData;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/content/res/ThemeResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "MetaData"
.end annotation


# instance fields
.field public supportCharSequence:Z

.field public supportFile:Z

.field public supportInt:Z

.field public themePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "supportInt"    # Z
    .param p3, "supportCharSequence"    # Z
    .param p4, "supportFile"    # Z

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lnubia/content/res/ThemeResources$MetaData;->themePath:Ljava/lang/String;

    .line 326
    iput-boolean p2, p0, Lnubia/content/res/ThemeResources$MetaData;->supportInt:Z

    .line 327
    iput-boolean p3, p0, Lnubia/content/res/ThemeResources$MetaData;->supportCharSequence:Z

    .line 328
    iput-boolean p4, p0, Lnubia/content/res/ThemeResources$MetaData;->supportFile:Z

    .line 329
    return-void
.end method
