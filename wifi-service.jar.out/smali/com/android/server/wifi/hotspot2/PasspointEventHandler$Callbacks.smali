.class public interface abstract Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;
.super Ljava/lang/Object;
.source "PasspointEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/PasspointEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onANQPResponse(JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onIconResponse(JLjava/lang/String;[B)V
.end method

.method public abstract onWnmFrameReceived(Lcom/android/server/wifi/hotspot2/WnmData;)V
.end method
