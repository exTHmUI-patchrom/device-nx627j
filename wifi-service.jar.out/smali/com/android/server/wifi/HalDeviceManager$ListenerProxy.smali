.class abstract Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;
.super Ljava/lang/Object;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ListenerProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LISTENER:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field protected mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "LISTENER;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/HalDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Ljava/lang/Object;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "LISTENER;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2045
    .local p0, "this":Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;, "Lcom/android/server/wifi/HalDeviceManager$ListenerProxy<TLISTENER;>;"
    .local p2, "listener":Ljava/lang/Object;, "TLISTENER;"
    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2046
    iput-object p2, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    .line 2047
    iput-object p3, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    .line 2048
    return-void
.end method

.method public static synthetic lambda$trigger$0(Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;)V
    .locals 0

    .line 2025
    .local p0, "this":Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;, "Lcom/android/server/wifi/HalDeviceManager$ListenerProxy<TLISTENER;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->action()V

    .line 2026
    return-void
.end method

.method public static synthetic lambda$triggerWithArg$1(Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;Z)V
    .locals 0
    .param p1, "arg"    # Z

    .line 2035
    .local p0, "this":Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;, "Lcom/android/server/wifi/HalDeviceManager$ListenerProxy<TLISTENER;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->actionWithArg(Z)V

    .line 2036
    return-void
.end method


# virtual methods
.method protected action()V
    .locals 0

    .line 2042
    .local p0, "this":Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;, "Lcom/android/server/wifi/HalDeviceManager$ListenerProxy<TLISTENER;>;"
    return-void
.end method

.method protected actionWithArg(Z)V
    .locals 0
    .param p1, "arg"    # Z

    .line 2043
    .local p0, "this":Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;, "Lcom/android/server/wifi/HalDeviceManager$ListenerProxy<TLISTENER;>;"
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2014
    .local p0, "this":Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;, "Lcom/android/server/wifi/HalDeviceManager$ListenerProxy<TLISTENER;>;"
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;

    iget-object v1, v1, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 2019
    .local p0, "this":Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;, "Lcom/android/server/wifi/HalDeviceManager$ListenerProxy<TLISTENER;>;"
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method trigger()V
    .locals 2

    .line 2023
    .local p0, "this":Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;, "Lcom/android/server/wifi/HalDeviceManager$ListenerProxy<TLISTENER;>;"
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ListenerProxy$EUZ7m5GXHY27oKauEW_8pihGjbw;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ListenerProxy$EUZ7m5GXHY27oKauEW_8pihGjbw;-><init>(Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2028
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->action()V

    .line 2030
    :goto_0
    return-void
.end method

.method triggerWithArg(Z)V
    .locals 2
    .param p1, "arg"    # Z

    .line 2033
    .local p0, "this":Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;, "Lcom/android/server/wifi/HalDeviceManager$ListenerProxy<TLISTENER;>;"
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ListenerProxy$YGLSZf58sxTORRCaSB1wOY_oquo;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ListenerProxy$YGLSZf58sxTORRCaSB1wOY_oquo;-><init>(Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2038
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->actionWithArg(Z)V

    .line 2040
    :goto_0
    return-void
.end method
