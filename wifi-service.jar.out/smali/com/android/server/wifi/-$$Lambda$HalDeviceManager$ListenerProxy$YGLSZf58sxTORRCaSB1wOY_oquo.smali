.class public final synthetic Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ListenerProxy$YGLSZf58sxTORRCaSB1wOY_oquo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ListenerProxy$YGLSZf58sxTORRCaSB1wOY_oquo;->f$0:Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;

    iput-boolean p2, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ListenerProxy$YGLSZf58sxTORRCaSB1wOY_oquo;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ListenerProxy$YGLSZf58sxTORRCaSB1wOY_oquo;->f$0:Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;

    iget-boolean v1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ListenerProxy$YGLSZf58sxTORRCaSB1wOY_oquo;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->lambda$triggerWithArg$1(Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;Z)V

    return-void
.end method
