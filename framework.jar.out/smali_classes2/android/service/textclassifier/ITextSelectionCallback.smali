.class public interface abstract Landroid/service/textclassifier/ITextSelectionCallback;
.super Ljava/lang/Object;
.source "ITextSelectionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textclassifier/ITextSelectionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFailure()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess(Landroid/view/textclassifier/TextSelection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
