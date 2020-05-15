.class public final Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;
.super Ljava/lang/Object;
.source "SettingsValidators.java"

# interfaces
.implements Landroid/provider/SettingsValidators$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsValidators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InclusiveFloatRangeValidator"
.end annotation


# instance fields
.field private final mMax:F

.field private final mMin:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p1, p0, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;->mMin:F

    .line 212
    iput p2, p0, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;->mMax:F

    .line 213
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 218
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 219
    .local v1, "floatValue":F
    iget v2, p0, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;->mMin:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;->mMax:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 220
    .end local v1    # "floatValue":F
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/RuntimeException;
    return v0
.end method
