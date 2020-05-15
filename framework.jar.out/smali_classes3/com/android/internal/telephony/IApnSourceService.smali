.class public interface abstract Lcom/android/internal/telephony/IApnSourceService;
.super Ljava/lang/Object;
.source "IApnSourceService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IApnSourceService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getApns()[Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
