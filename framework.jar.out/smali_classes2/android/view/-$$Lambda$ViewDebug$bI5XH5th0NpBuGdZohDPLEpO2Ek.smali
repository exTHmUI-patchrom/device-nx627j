.class public final synthetic Landroid/view/-$$Lambda$ViewDebug$bI5XH5th0NpBuGdZohDPLEpO2Ek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:Landroid/view/DisplayListCanvas;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/DisplayListCanvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewDebug$bI5XH5th0NpBuGdZohDPLEpO2Ek;->f$0:Landroid/view/View;

    iput-object p2, p0, Landroid/view/-$$Lambda$ViewDebug$bI5XH5th0NpBuGdZohDPLEpO2Ek;->f$1:Landroid/view/DisplayListCanvas;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewDebug$bI5XH5th0NpBuGdZohDPLEpO2Ek;->f$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/-$$Lambda$ViewDebug$bI5XH5th0NpBuGdZohDPLEpO2Ek;->f$1:Landroid/view/DisplayListCanvas;

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->lambda$profileViewDraw$1(Landroid/view/View;Landroid/view/DisplayListCanvas;)V

    return-void
.end method
