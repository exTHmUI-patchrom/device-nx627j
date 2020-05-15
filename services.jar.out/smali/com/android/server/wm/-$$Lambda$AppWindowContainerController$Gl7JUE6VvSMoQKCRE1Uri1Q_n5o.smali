.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Gl7JUE6VvSMoQKCRE1Uri1Q_n5o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/AppWindowContainerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppWindowContainerController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Gl7JUE6VvSMoQKCRE1Uri1Q_n5o;->f$0:Lcom/android/server/wm/AppWindowContainerController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Gl7JUE6VvSMoQKCRE1Uri1Q_n5o;->f$0:Lcom/android/server/wm/AppWindowContainerController;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->lambda$shouldSkipStaringWindow$2(Lcom/android/server/wm/AppWindowContainerController;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
