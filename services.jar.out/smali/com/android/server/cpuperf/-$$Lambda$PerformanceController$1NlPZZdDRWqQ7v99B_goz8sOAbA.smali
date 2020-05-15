.class public final synthetic Lcom/android/server/cpuperf/-$$Lambda$PerformanceController$1NlPZZdDRWqQ7v99B_goz8sOAbA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/cpuperf/PerformanceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/cpuperf/PerformanceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cpuperf/-$$Lambda$PerformanceController$1NlPZZdDRWqQ7v99B_goz8sOAbA;->f$0:Lcom/android/server/cpuperf/PerformanceController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cpuperf/-$$Lambda$PerformanceController$1NlPZZdDRWqQ7v99B_goz8sOAbA;->f$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->lambda$dump$1(Lcom/android/server/cpuperf/PerformanceController;)V

    return-void
.end method
