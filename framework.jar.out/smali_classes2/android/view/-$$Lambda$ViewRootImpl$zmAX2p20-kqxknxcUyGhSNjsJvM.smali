.class public final synthetic Landroid/view/-$$Lambda$ViewRootImpl$zmAX2p20-kqxknxcUyGhSNjsJvM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ThreadedRenderer$FrameCompleteCallback;


# instance fields
.field private final synthetic f$0:Landroid/view/ViewRootImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewRootImpl$zmAX2p20-kqxknxcUyGhSNjsJvM;->f$0:Landroid/view/ViewRootImpl;

    return-void
.end method


# virtual methods
.method public final onFrameComplete(J)V
    .locals 1

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewRootImpl$zmAX2p20-kqxknxcUyGhSNjsJvM;->f$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1, p2}, Landroid/view/ViewRootImpl;->lambda$performDraw$0(Landroid/view/ViewRootImpl;J)V

    return-void
.end method
