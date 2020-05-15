.class public interface abstract Lcom/android/server/wifi/WifiLog;
.super Ljava/lang/Object;
.source "WifiLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiLog$LogMessage;
    }
.end annotation


# static fields
.field public static final PLACEHOLDER:C = '%'


# virtual methods
.method public abstract d(Ljava/lang/String;)V
.end method

.method public abstract dump(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/errorprone/annotations/CompileTimeConstant;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;)V
.end method

.method public abstract eC(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/errorprone/annotations/CompileTimeConstant;
        .end annotation
    .end param
.end method

.method public abstract err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/errorprone/annotations/CompileTimeConstant;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract i(Ljava/lang/String;)V
.end method

.method public abstract iC(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/errorprone/annotations/CompileTimeConstant;
        .end annotation
    .end param
.end method

.method public abstract info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/errorprone/annotations/CompileTimeConstant;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract tC(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/errorprone/annotations/CompileTimeConstant;
        .end annotation
    .end param
.end method

.method public abstract trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/errorprone/annotations/CompileTimeConstant;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract trace(Ljava/lang/String;I)Lcom/android/server/wifi/WifiLog$LogMessage;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract v(Ljava/lang/String;)V
.end method

.method public abstract w(Ljava/lang/String;)V
.end method

.method public abstract wC(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/errorprone/annotations/CompileTimeConstant;
        .end annotation
    .end param
.end method

.method public abstract warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/errorprone/annotations/CompileTimeConstant;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method
