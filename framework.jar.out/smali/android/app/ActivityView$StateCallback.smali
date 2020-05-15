.class public abstract Landroid/app/ActivityView$StateCallback;
.super Ljava/lang/Object;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onActivityViewDestroyed(Landroid/app/ActivityView;)V
.end method

.method public abstract onActivityViewReady(Landroid/app/ActivityView;)V
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$StackInfo;)V
    .locals 0
    .param p1, "stackInfo"    # Landroid/app/ActivityManager$StackInfo;

    .line 119
    return-void
.end method
