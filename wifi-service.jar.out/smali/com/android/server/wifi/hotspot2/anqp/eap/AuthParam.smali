.class public abstract Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;
.super Ljava/lang/Object;
.source "AuthParam.java"


# static fields
.field public static final PARAM_TYPE_CREDENTIAL_TYPE:I = 0x5

.field public static final PARAM_TYPE_EXPANDED_EAP_METHOD:I = 0x1

.field public static final PARAM_TYPE_EXPANDED_INNER_EAP_METHOD:I = 0x4

.field public static final PARAM_TYPE_INNER_AUTH_EAP_METHOD_TYPE:I = 0x3

.field public static final PARAM_TYPE_NON_EAP_INNER_AUTH_TYPE:I = 0x2

.field public static final PARAM_TYPE_TUNNELED_EAP_METHOD_CREDENTIAL_TYPE:I = 0x6

.field public static final PARAM_TYPE_VENDOR_SPECIFIC:I = 0xdd


# instance fields
.field private final mAuthTypeID:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "authTypeID"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;->mAuthTypeID:I

    .line 36
    return-void
.end method


# virtual methods
.method public getAuthTypeID()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;->mAuthTypeID:I

    return v0
.end method
