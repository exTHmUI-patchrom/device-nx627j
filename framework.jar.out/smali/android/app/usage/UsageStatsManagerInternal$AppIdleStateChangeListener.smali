.class public abstract Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.super Ljava/lang/Object;
.source "UsageStatsManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageStatsManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AppIdleStateChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAppIdleStateChanged(Ljava/lang/String;IZII)V
.end method

.method public abstract onParoleStateChanged(Z)V
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 166
    return-void
.end method
