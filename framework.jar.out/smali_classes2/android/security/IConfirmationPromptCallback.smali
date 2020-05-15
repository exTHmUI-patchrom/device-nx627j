.class public interface abstract Landroid/security/IConfirmationPromptCallback;
.super Ljava/lang/Object;
.source "IConfirmationPromptCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IConfirmationPromptCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConfirmationPromptCompleted(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
