.class public interface abstract Lnubia/os/presssensor/IRankListener;
.super Ljava/lang/Object;
.source "IRankListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/presssensor/IRankListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRankChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
