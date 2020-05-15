.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$YooAGhJSBcftNk21oP6nOxalKHI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$YooAGhJSBcftNk21oP6nOxalKHI;->f$0:I

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$YooAGhJSBcftNk21oP6nOxalKHI;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$YooAGhJSBcftNk21oP6nOxalKHI;->f$0:I

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$YooAGhJSBcftNk21oP6nOxalKHI;->f$1:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->lambda$updateRotationUnchecked$10(IILcom/android/server/wm/WindowState;)V

    return-void
.end method
