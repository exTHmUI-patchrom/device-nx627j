.class public interface abstract Landroid/service/textclassifier/ITextLinksCallback;
.super Ljava/lang/Object;
.source "ITextLinksCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textclassifier/ITextLinksCallback$Stub;
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

.method public abstract onSuccess(Landroid/view/textclassifier/TextLinks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
