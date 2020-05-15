.class public final synthetic Landroid/view/-$$Lambda$SurfaceView$Cs7TGTdA1lXf9qW8VOJAfEsMjdk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/SurfaceView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$SurfaceView$Cs7TGTdA1lXf9qW8VOJAfEsMjdk;->f$0:Landroid/view/SurfaceView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/view/-$$Lambda$SurfaceView$Cs7TGTdA1lXf9qW8VOJAfEsMjdk;->f$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->lambda$onDrawFinished$0(Landroid/view/SurfaceView;)V

    return-void
.end method
