.class public interface abstract Landroid/service/textclassifier/ITextClassificationCallback;
.super Ljava/lang/Object;
.source "ITextClassificationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textclassifier/ITextClassificationCallback$Stub;
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

.method public abstract onSuccess(Landroid/view/textclassifier/TextClassification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
