.class public final Lcn/nubia/server/NubiaServer;
.super Ljava/lang/Object;
.source "NubiaServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadLibraries()V
    .locals 1

    .line 30
    const-string/jumbo v0, "nubia_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static startServices(Lcom/android/server/SystemServiceManager;Lcn/nubia/server/Sequence;)V
    .locals 3
    .param p0, "manager"    # Lcom/android/server/SystemServiceManager;
    .param p1, "sequence"    # Lcn/nubia/server/Sequence;

    .line 16
    sget-object v0, Lcn/nubia/server/Sequence;->FIRST:Lcn/nubia/server/Sequence;

    if-ne p1, v0, :cond_0

    .line 17
    invoke-static {}, Lcn/nubia/server/NubiaServer;->loadLibraries()V

    .line 19
    :cond_0
    sget-object v0, Lcn/nubia/server/ServiceInfoCache;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/ServiceInfo;

    .line 20
    .local v1, "info":Lcn/nubia/server/ServiceInfo;
    iget-boolean v2, v1, Lcn/nubia/server/ServiceInfo;->hasFeature:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcn/nubia/server/ServiceInfo;->sequence:Lcn/nubia/server/Sequence;

    if-ne v2, p1, :cond_2

    .line 21
    iget-object v2, v1, Lcn/nubia/server/ServiceInfo;->claseName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    iget-object v2, v1, Lcn/nubia/server/ServiceInfo;->claseName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .end local v1    # "info":Lcn/nubia/server/ServiceInfo;
    goto :goto_1

    .line 22
    .restart local v1    # "info":Lcn/nubia/server/ServiceInfo;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ServiceInfo.claseName don\'t be null!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    .end local v1    # "info":Lcn/nubia/server/ServiceInfo;
    :cond_2
    :goto_1
    goto :goto_0

    .line 27
    :cond_3
    return-void
.end method
