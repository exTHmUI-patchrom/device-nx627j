.class public Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.super Ljava/lang/Object;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true


# instance fields
.field private final mCarrierServicesSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

.field private final mContext:Landroid/content/Context;

.field private final mDestPort:I

.field private final mLogTag:Ljava/lang/String;

.field private final mPduFormat:Ljava/lang/String;

.field private final mPdus:[[B

.field private final mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;[[BILjava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "pdus"    # [[B
    .param p4, "destPort"    # I
    .param p5, "pduFormat"    # Ljava/lang/String;
    .param p6, "carrierServicesSmsFilterCallback"    # Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;
    .param p7, "logTag"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 67
    iput-object p3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPdus:[[B

    .line 68
    iput p4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mDestPort:I

    .line 69
    iput-object p5, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPduFormat:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCarrierServicesSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

    .line 71
    iput-object p7, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServicesSmsFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServicesSmsFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCarrierServicesSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

    return-object v0
.end method

.method private filterWithPackage(Ljava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterAggregator"    # Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPdus:[[B

    iget v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mDestPort:I

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPduFormat:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;[[BILjava/lang/String;)V

    .line 128
    .local v0, "smsFilter":Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;
    new-instance v1, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;Landroid/telephony/CarrierMessagingServiceManager;)V

    .line 130
    .local v1, "smsFilterCallback":Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V

    .line 131
    return-void
.end method

.method private getCarrierAppPackageForFiltering()Ljava/util/Optional;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 100
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    const-string v3, "UiccCard not initialized."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 108
    const-string v3, "Found carrier package."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    return-object v2

    .line 114
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    .line 117
    .local v4, "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 118
    const-string v3, "Found system package."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    .line 119
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    return-object v2

    .line 121
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find carrier package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", nor systemPackages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->logv(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    return-object v2
.end method

.method private getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 136
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "android.permission.CARRIER_FILTER_SMS"

    .line 139
    .local v3, "carrierFilterSmsPerm":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 140
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_0

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t get service information from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->loge(Ljava/lang/String;)V

    .line 142
    goto :goto_0

    .line 144
    :cond_0
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 145
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 147
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSystemAppForIntent: added package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    .line 150
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 151
    :cond_2
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method


# virtual methods
.method public filter()Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->getCarrierAppPackageForFiltering()Ljava/util/Optional;

    move-result-object v0

    .line 80
    .local v0, "carrierAppForFiltering":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "smsFilterPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/CarrierSmsUtils;->getCarrierImsPackageForIntent(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "carrierImsPackage":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;I)V

    .line 90
    .local v3, "filterAggregator":Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 91
    .local v5, "smsFilterPackage":Ljava/lang/String;
    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->filterWithPackage(Ljava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;)V

    .line 92
    .end local v5    # "smsFilterPackage":Ljava/lang/String;
    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 94
    .local v4, "handled":Z
    :goto_1
    return v4
.end method
