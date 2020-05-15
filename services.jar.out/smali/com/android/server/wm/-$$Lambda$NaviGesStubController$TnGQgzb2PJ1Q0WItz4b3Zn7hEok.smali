.class public final synthetic Lcom/android/server/wm/-$$Lambda$NaviGesStubController$TnGQgzb2PJ1Q0WItz4b3Zn7hEok;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/NaviGesStubController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/NaviGesStubController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$NaviGesStubController$TnGQgzb2PJ1Q0WItz4b3Zn7hEok;->f$0:Lcom/android/server/wm/NaviGesStubController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$NaviGesStubController$TnGQgzb2PJ1Q0WItz4b3Zn7hEok;->f$0:Lcom/android/server/wm/NaviGesStubController;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/NaviGesStubController;->lambda$notifyGestureStart$0(Lcom/android/server/wm/NaviGesStubController;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
