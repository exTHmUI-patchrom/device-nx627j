.class public Landroid/text/style/TabStopSpan$Standard;
.super Ljava/lang/Object;
.source "TabStopSpan.java"

# interfaces
.implements Landroid/text/style/TabStopSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TabStopSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private mTabOffset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Landroid/text/style/TabStopSpan$Standard;->mTabOffset:I

    .line 62
    return-void
.end method


# virtual methods
.method public getTabStop()I
    .locals 1

    .line 66
    iget v0, p0, Landroid/text/style/TabStopSpan$Standard;->mTabOffset:I

    return v0
.end method
