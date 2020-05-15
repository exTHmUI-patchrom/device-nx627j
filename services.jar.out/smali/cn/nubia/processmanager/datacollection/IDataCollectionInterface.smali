.class public interface abstract Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;
.super Ljava/lang/Object;
.source "IDataCollectionInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/processmanager/datacollection/IDataCollectionInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
