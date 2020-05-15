.class public Landroid/provider/SettingsValidators;
.super Ljava/lang/Object;
.source "SettingsValidators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SettingsValidators$PackageNameListValidator;,
        Landroid/provider/SettingsValidators$ComponentNameListValidator;,
        Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;,
        Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;,
        Landroid/provider/SettingsValidators$DiscreteValueValidator;,
        Landroid/provider/SettingsValidators$Validator;
    }
.end annotation


# static fields
.field public static final ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ANY_STRING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final LENIENT_IP_ADDRESS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NULLABLE_COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final PACKAGE_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final URI_VALIDATOR:Landroid/provider/SettingsValidators$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v1, "0"

    const-string v2, "1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 38
    new-instance v0, Landroid/provider/SettingsValidators$1;

    invoke-direct {v0}, Landroid/provider/SettingsValidators$1;-><init>()V

    sput-object v0, Landroid/provider/SettingsValidators;->ANY_STRING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 45
    new-instance v0, Landroid/provider/SettingsValidators$2;

    invoke-direct {v0}, Landroid/provider/SettingsValidators$2;-><init>()V

    sput-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 56
    new-instance v0, Landroid/provider/SettingsValidators$3;

    invoke-direct {v0}, Landroid/provider/SettingsValidators$3;-><init>()V

    sput-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 68
    new-instance v0, Landroid/provider/SettingsValidators$4;

    invoke-direct {v0}, Landroid/provider/SettingsValidators$4;-><init>()V

    sput-object v0, Landroid/provider/SettingsValidators;->URI_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 85
    new-instance v0, Landroid/provider/SettingsValidators$5;

    invoke-direct {v0}, Landroid/provider/SettingsValidators$5;-><init>()V

    sput-object v0, Landroid/provider/SettingsValidators;->COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 95
    new-instance v0, Landroid/provider/SettingsValidators$6;

    invoke-direct {v0}, Landroid/provider/SettingsValidators$6;-><init>()V

    sput-object v0, Landroid/provider/SettingsValidators;->NULLABLE_COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 102
    new-instance v0, Landroid/provider/SettingsValidators$7;

    invoke-direct {v0}, Landroid/provider/SettingsValidators$7;-><init>()V

    sput-object v0, Landroid/provider/SettingsValidators;->PACKAGE_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 137
    new-instance v0, Landroid/provider/SettingsValidators$8;

    invoke-direct {v0}, Landroid/provider/SettingsValidators$8;-><init>()V

    sput-object v0, Landroid/provider/SettingsValidators;->LENIENT_IP_ADDRESS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 149
    new-instance v0, Landroid/provider/SettingsValidators$9;

    invoke-direct {v0}, Landroid/provider/SettingsValidators$9;-><init>()V

    sput-object v0, Landroid/provider/SettingsValidators;->LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
