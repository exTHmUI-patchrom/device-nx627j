.class public Landroid/app/admin/DevicePolicyManager;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;,
        Landroid/app/admin/DevicePolicyManager$SystemSettingsWhitelist;,
        Landroid/app/admin/DevicePolicyManager$CreateAndManageUserFlags;,
        Landroid/app/admin/DevicePolicyManager$LockNowFlag;,
        Landroid/app/admin/DevicePolicyManager$AttestationIdType;,
        Landroid/app/admin/DevicePolicyManager$LockTaskFeature;,
        Landroid/app/admin/DevicePolicyManager$ProvisioningPreCondition;,
        Landroid/app/admin/DevicePolicyManager$UserProvisioningState;
    }
.end annotation


# static fields
.field public static final ACCOUNT_FEATURE_DEVICE_OR_PROFILE_OWNER_ALLOWED:Ljava/lang/String; = "android.account.DEVICE_OR_PROFILE_OWNER_ALLOWED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACCOUNT_FEATURE_DEVICE_OR_PROFILE_OWNER_DISALLOWED:Ljava/lang/String; = "android.account.DEVICE_OR_PROFILE_OWNER_DISALLOWED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_APPLICATION_DELEGATION_SCOPES_CHANGED:Ljava/lang/String; = "android.app.action.APPLICATION_DELEGATION_SCOPES_CHANGED"

.field public static final ACTION_BUGREPORT_SHARING_ACCEPTED:Ljava/lang/String; = "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

.field public static final ACTION_BUGREPORT_SHARING_DECLINED:Ljava/lang/String; = "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

.field public static final ACTION_DATA_SHARING_RESTRICTION_APPLIED:Ljava/lang/String; = "android.app.action.DATA_SHARING_RESTRICTION_APPLIED"

.field public static final ACTION_DATA_SHARING_RESTRICTION_CHANGED:Ljava/lang/String; = "android.app.action.DATA_SHARING_RESTRICTION_CHANGED"

.field public static final ACTION_DEVICE_ADMIN_SERVICE:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_SERVICE"

.field public static final ACTION_DEVICE_OWNER_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_OWNER_CHANGED"

.field public static final ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field public static final ACTION_MANAGED_PROFILE_PROVISIONED:Ljava/lang/String; = "android.app.action.MANAGED_PROFILE_PROVISIONED"

.field public static final ACTION_MANAGED_USER_CREATED:Ljava/lang/String; = "android.app.action.MANAGED_USER_CREATED"

.field public static final ACTION_PROFILE_OWNER_CHANGED:Ljava/lang/String; = "android.app.action.PROFILE_OWNER_CHANGED"

.field public static final ACTION_PROVISIONING_SUCCESSFUL:Ljava/lang/String; = "android.app.action.PROVISIONING_SUCCESSFUL"

.field public static final ACTION_PROVISION_FINALIZATION:Ljava/lang/String; = "android.app.action.PROVISION_FINALIZATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_PROVISION_MANAGED_DEVICE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_DEVICE"

.field public static final ACTION_PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_PROVISION_MANAGED_PROFILE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_PROFILE"

.field public static final ACTION_PROVISION_MANAGED_SHAREABLE_DEVICE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_SHAREABLE_DEVICE"

.field public static final ACTION_PROVISION_MANAGED_USER:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_USER"

.field public static final ACTION_REMOTE_BUGREPORT_DISPATCH:Ljava/lang/String; = "android.intent.action.REMOTE_BUGREPORT_DISPATCH"

.field public static final ACTION_SET_NEW_PARENT_PROFILE_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

.field public static final ACTION_SET_NEW_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PASSWORD"

.field public static final ACTION_SET_PROFILE_OWNER:Ljava/lang/String; = "android.app.action.SET_PROFILE_OWNER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SHOW_DEVICE_MONITORING_DIALOG:Ljava/lang/String; = "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

.field public static final ACTION_START_ENCRYPTION:Ljava/lang/String; = "android.app.action.START_ENCRYPTION"

.field public static final ACTION_STATE_USER_SETUP_COMPLETE:Ljava/lang/String; = "android.app.action.STATE_USER_SETUP_COMPLETE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SYSTEM_UPDATE_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.SYSTEM_UPDATE_POLICY_CHANGED"

.field public static final CODE_ACCOUNTS_NOT_EMPTY:I = 0x6

.field public static final CODE_ADD_MANAGED_PROFILE_DISALLOWED:I = 0xf

.field public static final CODE_CANNOT_ADD_MANAGED_PROFILE:I = 0xb

.field public static final CODE_DEVICE_ADMIN_NOT_SUPPORTED:I = 0xd

.field public static final CODE_HAS_DEVICE_OWNER:I = 0x1

.field public static final CODE_HAS_PAIRED:I = 0x8

.field public static final CODE_MANAGED_USERS_NOT_SUPPORTED:I = 0x9

.field public static final CODE_NONSYSTEM_USER_EXISTS:I = 0x5

.field public static final CODE_NOT_SYSTEM_USER:I = 0x7

.field public static final CODE_NOT_SYSTEM_USER_SPLIT:I = 0xc

.field public static final CODE_OK:I = 0x0

.field public static final CODE_SPLIT_SYSTEM_USER_DEVICE_SYSTEM_USER:I = 0xe

.field public static final CODE_SYSTEM_USER:I = 0xa

.field public static final CODE_USER_HAS_PROFILE_OWNER:I = 0x2

.field public static final CODE_USER_NOT_RUNNING:I = 0x3

.field public static final CODE_USER_SETUP_COMPLETED:I = 0x4

.field public static final DEFAULT_STRONG_AUTH_TIMEOUT_MS:J = 0xf731400L

.field public static final DELEGATION_APP_RESTRICTIONS:Ljava/lang/String; = "delegation-app-restrictions"

.field public static final DELEGATION_BLOCK_UNINSTALL:Ljava/lang/String; = "delegation-block-uninstall"

.field public static final DELEGATION_CERT_INSTALL:Ljava/lang/String; = "delegation-cert-install"

.field public static final DELEGATION_ENABLE_SYSTEM_APP:Ljava/lang/String; = "delegation-enable-system-app"

.field public static final DELEGATION_INSTALL_EXISTING_PACKAGE:Ljava/lang/String; = "delegation-install-existing-package"

.field public static final DELEGATION_KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "delegation-keep-uninstalled-packages"

.field public static final DELEGATION_PACKAGE_ACCESS:Ljava/lang/String; = "delegation-package-access"

.field public static final DELEGATION_PERMISSION_GRANT:Ljava/lang/String; = "delegation-permission-grant"

.field public static final ENCRYPTION_STATUS_ACTIVATING:I = 0x2

.field public static final ENCRYPTION_STATUS_ACTIVE:I = 0x3

.field public static final ENCRYPTION_STATUS_ACTIVE_DEFAULT_KEY:I = 0x4

.field public static final ENCRYPTION_STATUS_ACTIVE_PER_USER:I = 0x5

.field public static final ENCRYPTION_STATUS_INACTIVE:I = 0x1

.field public static final ENCRYPTION_STATUS_UNSUPPORTED:I = 0x0

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_BUGREPORT_NOTIFICATION_TYPE:Ljava/lang/String; = "android.app.extra.bugreport_notification_type"

.field public static final EXTRA_DELEGATION_SCOPES:Ljava/lang/String; = "android.app.extra.DELEGATION_SCOPES"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final EXTRA_PROFILE_OWNER_NAME:Ljava/lang/String; = "android.app.extra.PROFILE_OWNER_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_ACCOUNT_TO_MIGRATE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

.field public static final EXTRA_PROVISIONING_ADMIN_EXTRAS_BUNDLE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_ICON_URI:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_ICON_URI"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_LABEL:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_LABEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM"

.field public static final EXTRA_PROVISIONING_DISCLAIMERS:Ljava/lang/String; = "android.app.extra.PROVISIONING_DISCLAIMERS"

.field public static final EXTRA_PROVISIONING_DISCLAIMER_CONTENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_DISCLAIMER_CONTENT"

.field public static final EXTRA_PROVISIONING_DISCLAIMER_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_DISCLAIMER_HEADER"

.field public static final EXTRA_PROVISIONING_EMAIL_ADDRESS:Ljava/lang/String; = "android.app.extra.PROVISIONING_EMAIL_ADDRESS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION"

.field public static final EXTRA_PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED:Ljava/lang/String; = "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

.field public static final EXTRA_PROVISIONING_LOCALE:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCALE"

.field public static final EXTRA_PROVISIONING_LOCAL_TIME:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCAL_TIME"

.field public static final EXTRA_PROVISIONING_LOGO_URI:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOGO_URI"

.field public static final EXTRA_PROVISIONING_MAIN_COLOR:Ljava/lang/String; = "android.app.extra.PROVISIONING_MAIN_COLOR"

.field public static final EXTRA_PROVISIONING_ORGANIZATION_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_ORGANIZATION_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_SKIP_ENCRYPTION:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

.field public static final EXTRA_PROVISIONING_SKIP_USER_CONSENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_USER_CONSENT"

.field public static final EXTRA_PROVISIONING_SKIP_USER_SETUP:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_USER_SETUP"

.field public static final EXTRA_PROVISIONING_SUPPORT_URL:Ljava/lang/String; = "android.app.extra.PROVISIONING_SUPPORT_URL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_TIME_ZONE:Ljava/lang/String; = "android.app.extra.PROVISIONING_TIME_ZONE"

.field public static final EXTRA_PROVISIONING_USE_MOBILE_DATA:Ljava/lang/String; = "android.app.extra.PROVISIONING_USE_MOBILE_DATA"

.field public static final EXTRA_PROVISIONING_WIFI_HIDDEN:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_HIDDEN"

.field public static final EXTRA_PROVISIONING_WIFI_PAC_URL:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PAC_URL"

.field public static final EXTRA_PROVISIONING_WIFI_PASSWORD:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PASSWORD"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_BYPASS:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_BYPASS"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_HOST:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_HOST"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_PORT:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_PORT"

.field public static final EXTRA_PROVISIONING_WIFI_SECURITY_TYPE:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SECURITY_TYPE"

.field public static final EXTRA_PROVISIONING_WIFI_SSID:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SSID"

.field public static final EXTRA_REMOTE_BUGREPORT_HASH:Ljava/lang/String; = "android.intent.extra.REMOTE_BUGREPORT_HASH"

.field public static final EXTRA_RESTRICTION:Ljava/lang/String; = "android.app.extra.RESTRICTION"

.field public static final FLAG_EVICT_CREDENTIAL_ENCRYPTION_KEY:I = 0x1

.field public static final FLAG_MANAGED_CAN_ACCESS_PARENT:I = 0x2

.field public static final FLAG_PARENT_CAN_ACCESS_MANAGED:I = 0x1

.field public static final ID_TYPE_BASE_INFO:I = 0x1

.field public static final ID_TYPE_IMEI:I = 0x4

.field public static final ID_TYPE_MEID:I = 0x8

.field public static final ID_TYPE_SERIAL:I = 0x2

.field public static final INSTALLKEY_REQUEST_CREDENTIALS_ACCESS:I = 0x1

.field public static final INSTALLKEY_SET_USER_SELECTABLE:I = 0x2

.field public static final KEYGUARD_DISABLE_BIOMETRICS:I = 0x1a0

.field public static final KEYGUARD_DISABLE_FACE:I = 0x80

.field public static final KEYGUARD_DISABLE_FEATURES_ALL:I = 0x7fffffff

.field public static final KEYGUARD_DISABLE_FEATURES_NONE:I = 0x0

.field public static final KEYGUARD_DISABLE_FINGERPRINT:I = 0x20

.field public static final KEYGUARD_DISABLE_IRIS:I = 0x100

.field public static final KEYGUARD_DISABLE_REMOTE_INPUT:I = 0x40

.field public static final KEYGUARD_DISABLE_SECURE_CAMERA:I = 0x2

.field public static final KEYGUARD_DISABLE_SECURE_NOTIFICATIONS:I = 0x4

.field public static final KEYGUARD_DISABLE_TRUST_AGENTS:I = 0x10

.field public static final KEYGUARD_DISABLE_UNREDACTED_NOTIFICATIONS:I = 0x8

.field public static final KEYGUARD_DISABLE_WIDGETS_ALL:I = 0x1

.field public static final LEAVE_ALL_SYSTEM_APPS_ENABLED:I = 0x10

.field public static final LOCK_TASK_FEATURE_GLOBAL_ACTIONS:I = 0x10

.field public static final LOCK_TASK_FEATURE_HOME:I = 0x4

.field public static final LOCK_TASK_FEATURE_KEYGUARD:I = 0x20

.field public static final LOCK_TASK_FEATURE_NONE:I = 0x0

.field public static final LOCK_TASK_FEATURE_NOTIFICATIONS:I = 0x2

.field public static final LOCK_TASK_FEATURE_OVERVIEW:I = 0x8

.field public static final LOCK_TASK_FEATURE_SYSTEM_INFO:I = 0x1

.field public static final MAKE_USER_DEMO:I = 0x4

.field public static final MAKE_USER_EPHEMERAL:I = 0x2

.field public static final MIME_TYPE_PROVISIONING_NFC:Ljava/lang/String; = "application/com.android.managedprovisioning"

.field public static final NOTIFICATION_BUGREPORT_ACCEPTED_NOT_FINISHED:I = 0x2

.field public static final NOTIFICATION_BUGREPORT_FINISHED_NOT_ACCEPTED:I = 0x3

.field public static final NOTIFICATION_BUGREPORT_STARTED:I = 0x1

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_BIOMETRIC_WEAK:I = 0x8000

.field public static final PASSWORD_QUALITY_COMPLEX:I = 0x60000

.field public static final PASSWORD_QUALITY_MANAGED:I = 0x80000

.field public static final PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final PASSWORD_QUALITY_NUMERIC_COMPLEX:I = 0x30000

.field public static final PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final PERMISSION_GRANT_STATE_DEFAULT:I = 0x0

.field public static final PERMISSION_GRANT_STATE_DENIED:I = 0x2

.field public static final PERMISSION_GRANT_STATE_GRANTED:I = 0x1

.field public static final PERMISSION_POLICY_AUTO_DENY:I = 0x2

.field public static final PERMISSION_POLICY_AUTO_GRANT:I = 0x1

.field public static final PERMISSION_POLICY_PROMPT:I = 0x0

.field public static final POLICY_DISABLE_CAMERA:Ljava/lang/String; = "policy_disable_camera"

.field public static final POLICY_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "policy_disable_screen_capture"

.field public static final POLICY_MANDATORY_BACKUPS:Ljava/lang/String; = "policy_mandatory_backups"

.field public static final POLICY_SUSPEND_PACKAGES:Ljava/lang/String; = "policy_suspend_packages"

.field public static final PROFILE_KEYGUARD_FEATURES_AFFECT_OWNER:I = 0x1b0

.field public static final RESET_PASSWORD_DO_NOT_ASK_CREDENTIALS_ON_BOOT:I = 0x2

.field public static final RESET_PASSWORD_REQUIRE_ENTRY:I = 0x1

.field public static final SKIP_SETUP_WIZARD:I = 0x1

.field public static final STATE_USER_PROFILE_COMPLETE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATE_USER_SETUP_COMPLETE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATE_USER_SETUP_FINALIZED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATE_USER_SETUP_INCOMPLETE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATE_USER_UNMANAGED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static TAG:Ljava/lang/String; = null

.field public static final WIPE_EUICC:I = 0x4

.field public static final WIPE_EXTERNAL_STORAGE:I = 0x1

.field public static final WIPE_RESET_PROTECTION_DATA:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParentInstance:Z

.field private final mService:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    const-string v0, "DevicePolicyManager"

    sput-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/admin/IDevicePolicyManager;

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V

    .line 137
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/admin/IDevicePolicyManager;
    .param p3, "parentInstance"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 145
    iput-boolean p3, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    .line 146
    return-void
.end method

.method private static getCaCertAlias([B)Ljava/lang/String;
    .locals 3
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 4300
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 4301
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 4303
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;
    .locals 2
    .param p1, "callingUserOnly"    # Z

    .line 5084
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5086
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5087
    :catch_0
    move-exception v0

    .line 5088
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5091
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUserOnly"    # Z

    .line 5073
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5074
    return v0

    .line 5076
    :cond_0
    invoke-direct {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 5077
    .local v1, "deviceOwner":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 5078
    return v0

    .line 5080
    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private throwIfParentInstance(Ljava/lang/String;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;

    .line 8805
    iget-boolean v0, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    if-nez v0, :cond_0

    .line 8808
    return-void

    .line 8806
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be called on the parent instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private wipeDataInternal(ILjava/lang/String;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "wipeReasonForUser"    # Ljava/lang/String;

    .line 3457
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3459
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->wipeDataWithReason(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3462
    goto :goto_0

    .line 3460
    :catch_0
    move-exception v0

    .line 3461
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3464
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .line 6100
    const-string v0, "addCrossProfileIntentFilter"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6101
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6103
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6106
    goto :goto_0

    .line 6104
    :catch_0
    move-exception v0

    .line 6105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6108
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 7516
    const-string v0, "addCrossProfileWidgetProvider"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7517
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7519
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7520
    :catch_0
    move-exception v0

    .line 7521
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7524
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 9426
    const-string v0, "addOverrideApn"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9427
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9429
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9430
    :catch_0
    move-exception v0

    .line 9431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9434
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;

    .line 5594
    const-string v0, "addPersistentPreferredActivity"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5595
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5597
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5600
    goto :goto_0

    .line 5598
    :catch_0
    move-exception v0

    .line 5599
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5602
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;

    .line 6804
    const-string v0, "addUserRestriction"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6805
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6807
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6810
    goto :goto_0

    .line 6808
    :catch_0
    move-exception v0

    .line 6809
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6812
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public approveCaCert(Ljava/lang/String;IZ)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "approval"    # Z

    .line 3845
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3847
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3848
    :catch_0
    move-exception v0

    .line 3849
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3852
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "serviceIntent"    # Landroid/content/Intent;
    .param p3, "conn"    # Landroid/content/ServiceConnection;
    .param p4, "flags"    # I
    .param p5, "targetUser"    # Landroid/os/UserHandle;

    .line 9038
    const-string v0, "bindDeviceAdminServiceAsUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9041
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 9042
    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    .line 9041
    invoke-virtual {v0, p3, v1, p4}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v7

    .line 9043
    .local v7, "sd":Landroid/app/IServiceConnection;
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 9044
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 9045
    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    .line 9046
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 9044
    move-object v3, p1

    move-object v6, p2

    move v8, p4

    invoke-interface/range {v2 .. v9}, Landroid/app/admin/IDevicePolicyManager;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9047
    .end local v7    # "sd":Landroid/app/IServiceConnection;
    :catch_0
    move-exception v0

    .line 9048
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkProvisioningPreCondition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 7958
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->checkProvisioningPreCondition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7959
    :catch_0
    move-exception v0

    .line 7960
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;

    .line 9189
    const-string v0, "clearAppData"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9190
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9191
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9193
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v1, Landroid/app/admin/DevicePolicyManager$1;

    invoke-direct {v1, p0, p3, p4}, Landroid/app/admin/DevicePolicyManager$1;-><init>(Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9202
    nop

    .line 9203
    return-void

    .line 9200
    :catch_0
    move-exception v0

    .line 9201
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6126
    const-string v0, "clearCrossProfileIntentFilters"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6127
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6129
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6132
    goto :goto_0

    .line 6130
    :catch_0
    move-exception v0

    .line 6131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6134
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public clearDeviceOwnerApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5133
    const-string v0, "clearDeviceOwnerApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5134
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5136
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearDeviceOwner(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5139
    goto :goto_0

    .line 5137
    :catch_0
    move-exception v0

    .line 5138
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5141
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5617
    const-string v0, "clearPackagePersistentPreferredActivities"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5618
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5620
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5623
    goto :goto_0

    .line 5621
    :catch_0
    move-exception v0

    .line 5622
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5625
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5275
    const-string v0, "clearProfileOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5276
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5278
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearProfileOwner(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5281
    goto :goto_0

    .line 5279
    :catch_0
    move-exception v0

    .line 5280
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5283
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public clearResetPasswordToken(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 3107
    const-string v0, "clearResetPasswordToken"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3108
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3110
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearResetPasswordToken(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3111
    :catch_0
    move-exception v0

    .line 3112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3115
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearSystemUpdatePolicyFreezePeriodRecord()V
    .locals 2

    .line 7656
    const-string v0, "clearSystemUpdatePolicyFreezePeriodRecord"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7657
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 7658
    return-void

    .line 7661
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->clearSystemUpdatePolicyFreezePeriodRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7664
    nop

    .line 7665
    return-void

    .line 7662
    :catch_0
    move-exception v0

    .line 7663
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;

    .line 6826
    const-string v0, "clearUserRestriction"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6827
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6829
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6832
    goto :goto_0

    .line 6830
    :catch_0
    move-exception v0

    .line 6831
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6834
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "restriction"    # Ljava/lang/String;

    .line 6876
    const-string v0, "createAdminSupportIntent"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6877
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6879
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6880
    :catch_0
    move-exception v0

    .line 6881
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6884
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ownerName"    # Ljava/lang/String;
    .param p4, "profileOwnerComponent"    # Landroid/content/ComponentName;
    .param p5, "adminExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6524
    const/4 v0, 0x0

    return-object v0
.end method

.method public createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "profileOwner"    # Landroid/content/ComponentName;
    .param p4, "adminExtras"    # Landroid/os/PersistableBundle;
    .param p5, "flags"    # I

    .line 6604
    const-string v0, "createAndManageUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6606
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6609
    :catch_0
    move-exception v0

    .line 6610
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6607
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 6608
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/os/UserManager$UserOperationException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/os/UserManager$UserOperationException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6490
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 6980
    const-string v0, "enableSystemApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6981
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6983
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6984
    :catch_0
    move-exception v0

    .line 6985
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6988
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 6955
    const-string v0, "enableSystemApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6956
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6958
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6961
    goto :goto_0

    .line 6959
    :catch_0
    move-exception v0

    .line 6960
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6963
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 8725
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8728
    nop

    .line 8729
    return-void

    .line 8726
    :catch_0
    move-exception v0

    .line 8727
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public forceSecurityLogs()J
    .locals 2

    .line 8313
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 8314
    const-wide/16 v0, 0x0

    return-wide v0

    .line 8317
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->forceSecurityLogs()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 8318
    :catch_0
    move-exception v0

    .line 8319
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public forceUpdateUserSetupComplete()V
    .locals 2

    .line 8798
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->forceUpdateUserSetupComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8801
    nop

    .line 8802
    return-void

    .line 8799
    :catch_0
    move-exception v0

    .line 8800
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;I)Landroid/security/AttestedKeyPair;
    .locals 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySpec"    # Landroid/security/keystore/KeyGenParameterSpec;
    .param p4, "idAttestationFlags"    # I

    .line 4201
    const-string v0, "generateKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4203
    const/4 v0, 0x0

    :try_start_0
    new-instance v5, Landroid/security/keystore/ParcelableKeyGenParameterSpec;

    invoke-direct {v5, p3}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;-><init>(Landroid/security/keystore/KeyGenParameterSpec;)V

    .line 4205
    .local v5, "parcelableSpec":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    new-instance v1, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v1}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object v8, v1

    .line 4208
    .local v8, "attestationChain":Landroid/security/keymaster/KeymasterCertificateChain;
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 4209
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4208
    move-object v2, p1

    move-object v4, p2

    move v6, p4

    move-object v7, v8

    invoke-interface/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager;->generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result v1

    .line 4211
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 4212
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Error generating key via DevicePolicyManagerService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    return-object v0

    .line 4216
    :cond_0
    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    .line 4217
    .local v2, "alias":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/security/KeyChain;->getKeyPair(Landroid/content/Context;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4218
    .local v3, "keyPair":Ljava/security/KeyPair;
    move-object v4, v0

    .line 4220
    .local v4, "outputChain":[Ljava/security/cert/Certificate;
    :try_start_1
    invoke-static {v8}, Landroid/security/keystore/AttestationUtils;->isChainValid(Landroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4221
    invoke-static {v8}, Landroid/security/keystore/AttestationUtils;->parseCertificateChain(Landroid/security/keymaster/KeymasterCertificateChain;)[Ljava/security/cert/X509Certificate;

    move-result-object v6
    :try_end_1
    .catch Landroid/security/keystore/KeyAttestationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/security/KeyChainException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v6

    .line 4227
    :cond_1
    nop

    .line 4228
    :try_start_2
    new-instance v6, Landroid/security/AttestedKeyPair;

    invoke-direct {v6, v3, v4}, Landroid/security/AttestedKeyPair;-><init>(Ljava/security/KeyPair;[Ljava/security/cert/Certificate;)V

    return-object v6

    .line 4223
    :catch_0
    move-exception v6

    .line 4224
    .local v6, "e":Landroid/security/keystore/KeyAttestationException;
    sget-object v7, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing attestation chain for alias "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4225
    iget-object v7, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v9, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, p1, v9, v2}, Landroid/app/admin/IDevicePolicyManager;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/security/KeyChainException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4226
    return-object v0

    .line 4233
    .end local v1    # "success":Z
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "keyPair":Ljava/security/KeyPair;
    .end local v4    # "outputChain":[Ljava/security/cert/Certificate;
    .end local v5    # "parcelableSpec":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    .end local v6    # "e":Landroid/security/keystore/KeyAttestationException;
    .end local v8    # "attestationChain":Landroid/security/keymaster/KeymasterCertificateChain;
    :catch_1
    move-exception v1

    .line 4234
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Interrupted while generating key"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4235
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 4231
    :catch_2
    move-exception v1

    .line 4232
    .local v1, "e":Landroid/security/KeyChainException;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to generate key"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4236
    .end local v1    # "e":Landroid/security/KeyChainException;
    nop

    .line 4237
    :goto_0
    return-object v0

    .line 4229
    :catch_3
    move-exception v0

    .line 4230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 1

    .line 7065
    const-string v0, "getAccountTypesWithManagementDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7066
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 7074
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7076
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7077
    :catch_0
    move-exception v0

    .line 7078
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7082
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveAdmins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1854
    const-string v0, "getActiveAdmins"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 1855
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAdminsAsUser(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1863
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 1865
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1866
    :catch_0
    move-exception v0

    .line 1867
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1870
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/Set;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8661
    const-string v0, "getAffiliationIds"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8663
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8664
    :catch_0
    move-exception v0

    .line 8665
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 4501
    const-string v0, "getAlwaysOnVpnPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4502
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4504
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4505
    :catch_0
    move-exception v0

    .line 4506
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4509
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 6780
    const-string v0, "getApplicationRestrictions"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6781
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6783
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6785
    :catch_0
    move-exception v0

    .line 6786
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6789
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5702
    const-string v0, "getApplicationRestrictionsManagingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5703
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5705
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5706
    :catch_0
    move-exception v0

    .line 5707
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5710
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoTimeRequired()Z
    .locals 2

    .line 4677
    const-string v0, "getAutoTimeRequired"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4678
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4680
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeRequired()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4681
    :catch_0
    move-exception v0

    .line 4682
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4685
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 9063
    const-string v0, "getBindDeviceAdminTargetUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9065
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9066
    :catch_0
    move-exception v0

    .line 9067
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6056
    const-string v0, "getBluetoothContactSharingDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6057
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6059
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6060
    :catch_0
    move-exception v0

    .line 6061
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6064
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 6076
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6078
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 6079
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 6078
    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6080
    :catch_0
    move-exception v0

    .line 6081
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6084
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 4546
    const-string v0, "getCameraDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4547
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 4552
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4554
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4555
    :catch_0
    move-exception v0

    .line 4556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4559
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4358
    const-string v0, "getCertInstallerPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4359
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4361
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4362
    :catch_0
    move-exception v0

    .line 4363
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4366
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 5900
    const-string v0, "getCrossProfileCallerIdDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5901
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5903
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5904
    :catch_0
    move-exception v0

    .line 5905
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5908
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 5918
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5920
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5921
    :catch_0
    move-exception v0

    .line 5922
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5925
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 5962
    const-string v0, "getCrossProfileContactsSearchDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5963
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5965
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5966
    :catch_0
    move-exception v0

    .line 5967
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5970
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCrossProfileContactsSearchDisabled(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 5981
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5983
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 5984
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileContactsSearchDisabledForUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5983
    return v0

    .line 5985
    :catch_0
    move-exception v0

    .line 5986
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5989
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7566
    const-string v0, "getCrossProfileWidgetProviders"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7567
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1

    .line 7569
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7570
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 7571
    return-object v0

    .line 7575
    .end local v0    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 7573
    :catch_0
    move-exception v0

    .line 7574
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7577
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFailedPasswordAttempts()I
    .locals 1

    .line 2862
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    return v0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .line 2876
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2878
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2879
    :catch_0
    move-exception v0

    .line 2880
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2883
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "delegationScope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4440
    const-string v0, "getDelegatePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4441
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4443
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4444
    :catch_0
    move-exception v0

    .line 4445
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4448
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "delegatedPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4416
    const-string v0, "getDelegatedScopes"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4417
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4419
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4420
    :catch_0
    move-exception v0

    .line 4421
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4424
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceInitializerApp()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5207
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceInitializerComponent()Landroid/content/ComponentName;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5153
    const-string v0, "getDeviceOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5154
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 5155
    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5069
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;
    .locals 1

    .line 5058
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;
    .locals 2

    .line 5363
    const-string v0, "getDeviceOwnerLockScreenInfo"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5364
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5366
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5367
    :catch_0
    move-exception v0

    .line 5368
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5371
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceOwnerNameOnAnyUser()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5187
    const-string v0, "getDeviceOwnerNameOnAnyUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5188
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5190
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5191
    :catch_0
    move-exception v0

    .line 5192
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5195
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8566
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8567
    :catch_0
    move-exception v0

    .line 8568
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDeviceOwnerUserId()I
    .locals 2

    .line 5103
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5105
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5106
    :catch_0
    move-exception v0

    .line 5107
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5110
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/16 v0, -0x2710

    return v0
.end method

.method public getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9265
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9266
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9265
    return-object v0

    .line 9267
    :catch_0
    move-exception v0

    .line 9268
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDoNotAskCredentialsOnBoot()Z
    .locals 2

    .line 2893
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2895
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2896
    :catch_0
    move-exception v0

    .line 2897
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2900
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 9387
    const-string v0, "getEndUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9389
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9390
    :catch_0
    move-exception v0

    .line 9391
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getForceEphemeralUsers(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 4720
    const-string v0, "getForceEphemeralUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4721
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4723
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4724
    :catch_0
    move-exception v0

    .line 4725
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4728
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGlobalProxyAdmin()Landroid/content/ComponentName;
    .locals 2

    .line 3573
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3575
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3576
    :catch_0
    move-exception v0

    .line 3577
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3580
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGuestUserDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 4596
    const/4 v0, 0x0

    return v0
.end method

.method public getInstalledCaCerts(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 3947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3948
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v1, "getInstalledCaCerts"

    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3949
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 3951
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 3952
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 3953
    .local v1, "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3955
    .local v3, "alias":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3958
    goto :goto_1

    .line 3956
    :catch_0
    move-exception v4

    .line 3957
    .local v4, "ce":Ljava/security/cert/CertificateException;
    :try_start_2
    sget-object v5, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not encode certificate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3959
    .end local v3    # "alias":Ljava/lang/String;
    .end local v4    # "ce":Ljava/security/cert/CertificateException;
    :goto_1
    goto :goto_0

    .line 3962
    .end local v1    # "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :cond_0
    goto :goto_2

    .line 3960
    :catch_1
    move-exception v1

    .line 3961
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3964
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_2
    return-object v0
.end method

.method public getKeepUninstalledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6435
    const-string v0, "getKeepUninstalledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6436
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6438
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6439
    :catch_0
    move-exception v0

    .line 6440
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6443
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 4802
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 4807
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4809
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4810
    :catch_0
    move-exception v0

    .line 4811
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4814
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLastBugReportRequestTime()J
    .locals 2

    .line 9104
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLastBugReportRequestTime()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 9105
    :catch_0
    move-exception v0

    .line 9106
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLastNetworkLogRetrievalTime()J
    .locals 2

    .line 9124
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLastNetworkLogRetrievalTime()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 9125
    :catch_0
    move-exception v0

    .line 9126
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLastSecurityLogRetrievalTime()J
    .locals 2

    .line 9085
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLastSecurityLogRetrievalTime()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 9086
    :catch_0
    move-exception v0

    .line 9087
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLockTaskFeatures(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 7196
    const-string v0, "getLockTaskFeatures"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7197
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7199
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getLockTaskFeatures(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7200
    :catch_0
    move-exception v0

    .line 7201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 7127
    const-string v0, "getLockTaskPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7128
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7130
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7131
    :catch_0
    move-exception v0

    .line 7132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7135
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8115
    const-string v0, "getLongSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8116
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8118
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8119
    :catch_0
    move-exception v0

    .line 8120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8123
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 8159
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8161
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8162
    :catch_0
    move-exception v0

    .line 8163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8166
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMandatoryBackupTransport()Landroid/content/ComponentName;
    .locals 2

    .line 8887
    const-string v0, "getMandatoryBackupTransport"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8889
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getMandatoryBackupTransport()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8890
    :catch_0
    move-exception v0

    .line 8891
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 2951
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 2956
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2958
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2960
    :catch_0
    move-exception v0

    .line 2961
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2964
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 3223
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 3228
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3230
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 3231
    :catch_0
    move-exception v0

    .line 3232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3235
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8369
    const-string v0, "getMeteredDataDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8370
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8372
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8373
    :catch_0
    move-exception v0

    .line 8374
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8377
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getOrganizationColor(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8491
    const-string v0, "getOrganizationColor"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8493
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8494
    :catch_0
    move-exception v0

    .line 8495
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getOrganizationColorForUser(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .line 8508
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8509
    :catch_0
    move-exception v0

    .line 8510
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8544
    const-string v0, "getOrganizationName"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8546
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8547
    :catch_0
    move-exception v0

    .line 8548
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getOrganizationNameForUser(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "userHandle"    # I

    .line 8582
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8583
    :catch_0
    move-exception v0

    .line 8584
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 9504
    const-string v0, "getOverrideApns"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9505
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9507
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9508
    :catch_0
    move-exception v0

    .line 9509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9512
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9166
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9167
    :catch_0
    move-exception v0

    .line 9168
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8217
    const-string v0, "getParentProfileInstance"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8219
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8222
    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V

    return-object v0

    .line 8220
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The current user does not have a parent profile."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8223
    :catch_0
    move-exception v0

    .line 8224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getParentProfileInstance(Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;
    .locals 4
    .param p1, "uInfo"    # Landroid/content/pm/UserInfo;

    .line 8330
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 8332
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8336
    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V

    return-object v0

    .line 8333
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have a parent profile."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;)J
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 2721
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2723
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2724
    :catch_0
    move-exception v0

    .line 2725
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2728
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;)J
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 2697
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2699
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2700
    :catch_0
    move-exception v0

    .line 2701
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2704
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 2745
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 2750
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2752
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2753
    :catch_0
    move-exception v0

    .line 2754
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2757
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMaximumLength(I)I
    .locals 1
    .param p1, "quality"    # I

    .line 2768
    const/16 v0, 0x10

    return v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 2185
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 2190
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2192
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2193
    :catch_0
    move-exception v0

    .line 2194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2197
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 2391
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 2396
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2398
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2399
    :catch_0
    move-exception v0

    .line 2400
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2403
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 2323
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 2328
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2330
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2331
    :catch_0
    move-exception v0

    .line 2332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2335
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 2594
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 2599
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2601
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2602
    :catch_0
    move-exception v0

    .line 2603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2606
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 2459
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 2464
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2466
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2467
    :catch_0
    move-exception v0

    .line 2468
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2471
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 2526
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 2531
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2533
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2534
    :catch_0
    move-exception v0

    .line 2535
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2538
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 2254
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 2259
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2261
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2262
    :catch_0
    move-exception v0

    .line 2263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2266
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 2120
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 2125
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2127
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2128
    :catch_0
    move-exception v0

    .line 2129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2132
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 7791
    const-string v0, "getPendingSystemUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7793
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7794
    :catch_0
    move-exception v0

    .line 7795
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;

    .line 7915
    const-string v0, "getPermissionGrantState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7917
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7919
    :catch_0
    move-exception v0

    .line 7920
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPermissionPolicy(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 7837
    const-string v0, "getPermissionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7839
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7840
    :catch_0
    move-exception v0

    .line 7841
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPermittedAccessibilityServices(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6228
    const-string v0, "getPermittedAccessibilityServices"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6229
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6231
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6232
    :catch_0
    move-exception v0

    .line 6233
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6236
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6179
    const-string v0, "getPermittedAccessibilityServices"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6180
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6182
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6183
    :catch_0
    move-exception v0

    .line 6184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6390
    const-string v0, "getPermittedCrossProfileNotificationListeners"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6391
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6393
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6394
    :catch_0
    move-exception v0

    .line 6395
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6398
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6284
    const-string v0, "getPermittedInputMethods"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6285
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6287
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6288
    :catch_0
    move-exception v0

    .line 6289
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6292
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6331
    const-string v0, "getPermittedInputMethodsForCurrentUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6332
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6334
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6335
    :catch_0
    move-exception v0

    .line 6336
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6339
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileOwner()Landroid/content/ComponentName;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5513
    const-string v0, "getProfileOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5514
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5523
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5525
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5526
    :catch_0
    move-exception v0

    .line 5527
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5530
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileOwnerName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5540
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5542
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5543
    :catch_0
    move-exception v0

    .line 5544
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5547
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileOwnerNameAsUser(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5560
    const-string v0, "getProfileOwnerNameAsUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5561
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5563
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5564
    :catch_0
    move-exception v0

    .line 5565
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5568
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileWithMinimumFailedPasswordsForWipe(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .line 2975
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2977
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2979
    :catch_0
    move-exception v0

    .line 2980
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2983
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/16 v0, -0x2710

    return v0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;

    .line 4842
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4844
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4847
    goto :goto_0

    .line 4845
    :catch_0
    move-exception v0

    .line 4846
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4849
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getRequiredStrongAuthTimeout(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 3296
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 3301
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3303
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 3304
    :catch_0
    move-exception v0

    .line 3305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3308
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/32 v0, 0xf731400

    return-wide v0
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 4633
    const-string v0, "getScreenCaptureDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4634
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 4639
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4641
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4642
    :catch_0
    move-exception v0

    .line 4643
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4646
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 6734
    const-string v0, "getSecondaryUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6736
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6737
    :catch_0
    move-exception v0

    .line 6738
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8069
    const-string v0, "getShortSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8070
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8072
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8073
    :catch_0
    move-exception v0

    .line 8074
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8077
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 8137
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8139
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8140
    :catch_0
    move-exception v0

    .line 8141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8144
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 9372
    const-string v0, "getStartUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9374
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9375
    :catch_0
    move-exception v0

    .line 9376
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 3786
    const-string v0, "getStorageEncryption"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3787
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3789
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3790
    :catch_0
    move-exception v0

    .line 3791
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3794
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStorageEncryptionStatus()I
    .locals 1

    .line 3818
    const-string v0, "getStorageEncryptionStatus"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3819
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v0

    return v0
.end method

.method public getStorageEncryptionStatus(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .line 3824
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3826
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3827
    :catch_0
    move-exception v0

    .line 3828
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3831
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    .line 7639
    const-string v0, "getSystemUpdatePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7640
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7642
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7643
    :catch_0
    move-exception v0

    .line 7644
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7647
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransferOwnershipBundle()Landroid/os/PersistableBundle;
    .locals 2

    .line 9576
    const-string v0, "getTransferOwnershipBundle"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9578
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getTransferOwnershipBundle()Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9579
    :catch_0
    move-exception v0

    .line 9580
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .line 5850
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .line 5856
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5858
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5860
    :catch_0
    move-exception v0

    .line 5861
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5864
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getUserProvisioningState()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8597
    const-string v0, "getUserProvisioningState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8598
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8600
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getUserProvisioningState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8601
    :catch_0
    move-exception v0

    .line 8602
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8605
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6848
    const-string v0, "getUserRestrictions"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6849
    const/4 v0, 0x0

    .line 6850
    .local v0, "ret":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 6852
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 6855
    goto :goto_0

    .line 6853
    :catch_0
    move-exception v1

    .line 6854
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 6857
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8006
    const-string v0, "getWifiMacAddress"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8008
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8009
    :catch_0
    move-exception v0

    .line 8010
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasCaCertInstalled(Landroid/content/ComponentName;[B)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    .line 3998
    const-string v0, "hasCaCertInstalled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3999
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4001
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4002
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 4005
    :catch_0
    move-exception v0

    .line 4006
    .local v0, "ce":Ljava/security/cert/CertificateException;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not parse certificate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    goto :goto_0

    .line 4003
    :catch_1
    move-exception v0

    .line 4004
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4009
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v1
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I

    .line 1934
    const-string v0, "hasGrantedPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 1935
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 1937
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1938
    :catch_0
    move-exception v0

    .line 1939
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1942
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserSetupCompleted()Z
    .locals 2

    .line 5290
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5292
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5293
    :catch_0
    move-exception v0

    .line 5294
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5297
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public installCaCert(Landroid/content/ComponentName;[B)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    .line 3895
    const-string v0, "installCaCert"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3896
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3898
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3899
    :catch_0
    move-exception v0

    .line 3900
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3903
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 7010
    const-string v0, "installExistingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7011
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7013
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7015
    :catch_0
    move-exception v0

    .line 7016
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7019
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "cert"    # Ljava/security/cert/Certificate;
    .param p4, "alias"    # Ljava/lang/String;

    .line 4038
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/security/cert/Certificate;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/DevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;I)Z
    .locals 15
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "certs"    # [Ljava/security/cert/Certificate;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "flags"    # I

    move-object v1, p0

    move-object/from16 v2, p3

    .line 4111
    const-string v0, "installKeyPair"

    invoke-direct {v1, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4112
    and-int/lit8 v0, p5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v12, v4

    goto :goto_0

    :cond_0
    move v12, v3

    .line 4114
    .local v12, "requestAccess":Z
    :goto_0
    and-int/lit8 v0, p5, 0x2

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    move v13, v4

    goto :goto_1

    :cond_1
    move v13, v3

    .line 4117
    .local v13, "isUserSelectable":Z
    :goto_1
    :try_start_0
    new-array v0, v4, [Ljava/security/cert/Certificate;

    aget-object v5, v2, v3

    aput-object v5, v0, v3

    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v9

    .line 4118
    .local v9, "pemCert":[B
    const/4 v0, 0x0

    .line 4119
    .local v0, "pemChain":[B
    array-length v5, v2

    if-le v5, v4, :cond_2

    .line 4120
    array-length v5, v2

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/Certificate;

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4

    move-object v0, v4

    .line 4122
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    const-class v5, Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4123
    move-object/from16 v14, p2

    :try_start_1
    invoke-virtual {v4, v14, v5}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v4

    check-cast v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v4}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v8

    .line 4124
    .local v8, "pkcs8Key":[B
    iget-object v5, v1, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v4, v1, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v6, p1

    move-object v10, v0

    move-object/from16 v11, p4

    invoke-interface/range {v5 .. v13}, Landroid/app/admin/IDevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v4

    .line 4130
    .end local v0    # "pemChain":[B
    .end local v8    # "pkcs8Key":[B
    .end local v9    # "pemCert":[B
    :catch_0
    move-exception v0

    goto :goto_2

    .line 4128
    :catch_1
    move-exception v0

    goto :goto_3

    .line 4126
    :catch_2
    move-exception v0

    goto :goto_5

    .line 4130
    :catch_3
    move-exception v0

    move-object/from16 v14, p2

    .line 4131
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    sget-object v4, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "Could not pem-encode certificate"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 4128
    :catch_4
    move-exception v0

    move-object/from16 v14, p2

    .line 4129
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_3
    sget-object v4, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to obtain private key material"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4132
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    nop

    .line 4133
    :goto_4
    return v3

    .line 4126
    :catch_5
    move-exception v0

    move-object/from16 v14, p2

    .line 4127
    .local v0, "e":Landroid/os/RemoteException;
    :goto_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "certs"    # [Ljava/security/cert/Certificate;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "requestAccess"    # Z

    .line 4071
    const/4 v0, 0x2

    .line 4072
    .local v0, "flags":I
    if-eqz p5, :cond_0

    .line 4073
    or-int/lit8 v0, v0, 0x1

    .line 4075
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/DevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 6202
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6204
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6206
    :catch_0
    move-exception v0

    .line 6207
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6210
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isActivePasswordSufficient()Z
    .locals 3

    .line 2791
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2793
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2794
    :catch_0
    move-exception v0

    .line 2795
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2798
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1813
    const-string v0, "isAdminActive"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 1814
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isAdminActiveAsUser(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1822
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 1824
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1825
    :catch_0
    move-exception v0

    .line 1826
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1829
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAffiliatedUser()Z
    .locals 2

    .line 8678
    const-string v0, "isAffiliatedUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8680
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isAffiliatedUser()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8681
    :catch_0
    move-exception v0

    .line 8682
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 6931
    const-string v0, "isApplicationHidden"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6932
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6934
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6935
    :catch_0
    move-exception v0

    .line 6936
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6939
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBackupServiceEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8840
    const-string v0, "isBackupServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8842
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8843
    :catch_0
    move-exception v0

    .line 8844
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isCaCertApproved(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 3861
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3863
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3864
    :catch_0
    move-exception v0

    .line 3865
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3868
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCallerApplicationRestrictionsManagingPackage()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5726
    const-string v0, "isCallerApplicationRestrictionsManagingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5727
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5729
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 5730
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5729
    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5731
    :catch_0
    move-exception v0

    .line 5732
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5735
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentInputMethodSetByOwner()Z
    .locals 2

    .line 9143
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isCurrentInputMethodSetByOwner()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9144
    :catch_0
    move-exception v0

    .line 9145
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isDeviceIdAttestationSupported()Z
    .locals 2

    .line 4246
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4247
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.software.device_id_attestation"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isDeviceManaged()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5172
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->hasDeviceOwner()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5173
    :catch_0
    move-exception v0

    .line 5174
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isDeviceOwnerApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5025
    const-string v0, "isDeviceOwnerApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5026
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5049
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5037
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8742
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isDeviceProvisioned()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8743
    :catch_0
    move-exception v0

    .line 8744
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isDeviceProvisioningConfigApplied()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8783
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isDeviceProvisioningConfigApplied()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8784
    :catch_0
    move-exception v0

    .line 8785
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEphemeralUser(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6749
    const-string/jumbo v0, "isEphemeralUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6751
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isEphemeralUser(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6752
    :catch_0
    move-exception v0

    .line 6753
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 6307
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6309
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6310
    :catch_0
    move-exception v0

    .line 6311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6314
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 7144
    const-string/jumbo v0, "isLockTaskPermitted"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7145
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7147
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7148
    :catch_0
    move-exception v0

    .line 7149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7152
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLogoutEnabled()Z
    .locals 2

    .line 9228
    const-string/jumbo v0, "isLogoutEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9230
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isLogoutEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9231
    :catch_0
    move-exception v0

    .line 9232
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isManagedProfile(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 7972
    const-string/jumbo v0, "isManagedProfile"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7974
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7975
    :catch_0
    move-exception v0

    .line 7976
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 7435
    const-string/jumbo v0, "isMasterVolumeMuted"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7436
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7438
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7439
    :catch_0
    move-exception v0

    .line 7440
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7443
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 8393
    const-string v0, "getMeteredDataDisabledForUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8394
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8396
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8397
    :catch_0
    move-exception v0

    .line 8398
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8401
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8959
    const-string/jumbo v0, "isNetworkLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8961
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8962
    :catch_0
    move-exception v0

    .line 8963
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isNotificationListenerServicePermitted(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 6411
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6413
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6414
    :catch_0
    move-exception v0

    .line 6415
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6418
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isOverrideApnEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 9546
    const-string/jumbo v0, "isOverrideApnEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9547
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9549
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isOverrideApnEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9550
    :catch_0
    move-exception v0

    .line 9551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9554
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5429
    const-string/jumbo v0, "isPackageSuspended"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5430
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5432
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5435
    :catch_0
    move-exception v0

    .line 5436
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5433
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 5434
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5439
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProfileActivePasswordSufficientForParent(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    .line 2835
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2837
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isProfileActivePasswordSufficientForParent(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2838
    :catch_0
    move-exception v0

    .line 2839
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2842
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProfileOwnerApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5492
    const-string/jumbo v0, "isProfileOwnerApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5493
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5495
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 5496
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 5497
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 5496
    :cond_0
    return v1

    .line 5498
    .end local v0    # "profileOwner":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 5499
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5502
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public isProvisioningAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 7934
    const-string/jumbo v0, "isProvisioningAllowed"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7936
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7937
    :catch_0
    move-exception v0

    .line 7938
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1838
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 1840
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1841
    :catch_0
    move-exception v0

    .line 1842
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1845
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isResetPasswordTokenActive(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 3127
    const-string/jumbo v0, "isResetPasswordTokenActive"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3128
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3130
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3131
    :catch_0
    move-exception v0

    .line 3132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3135
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8266
    const-string/jumbo v0, "isSecurityLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8268
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8269
    :catch_0
    move-exception v0

    .line 8270
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSeparateProfileChallengeAllowed(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    .line 1951
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 1953
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isSeparateProfileChallengeAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1954
    :catch_0
    move-exception v0

    .line 1955
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1958
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSystemOnlyUser(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 7989
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isSystemOnlyUser(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7990
    :catch_0
    move-exception v0

    .line 7991
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 7488
    const-string/jumbo v0, "isUninstallBlocked"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7489
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7491
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7492
    :catch_0
    move-exception v0

    .line 7493
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7496
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUninstallInQueue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 8695
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8696
    :catch_0
    move-exception v0

    .line 8697
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUsingUnifiedPassword(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 2813
    const-string/jumbo v0, "isUsingUnifiedPassword"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 2814
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2816
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2817
    :catch_0
    move-exception v0

    .line 2818
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2821
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public lockNow()V
    .locals 1

    .line 3347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->lockNow(I)V

    .line 3348
    return-void
.end method

.method public lockNow(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 3373
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3375
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->lockNow(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3378
    goto :goto_0

    .line 3376
    :catch_0
    move-exception v0

    .line 3377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3380
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public logoutUser(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6711
    const-string/jumbo v0, "logoutUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6713
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->logoutUser(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6714
    :catch_0
    move-exception v0

    .line 6715
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected myUserId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 151
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    return v0
.end method

.method public notifyPendingSystemUpdate(J)V
    .locals 2
    .param p1, "updateReceivedTime"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7743
    const-string/jumbo v0, "notifyPendingSystemUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7744
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7746
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {p1, p2}, Landroid/app/admin/SystemUpdateInfo;->of(J)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7749
    goto :goto_0

    .line 7747
    :catch_0
    move-exception v0

    .line 7748
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7751
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyPendingSystemUpdate(JZ)V
    .locals 2
    .param p1, "updateReceivedTime"    # J
    .param p3, "isSecurityPatch"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7771
    const-string/jumbo v0, "notifyPendingSystemUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7772
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7774
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {p1, p2, p3}, Landroid/app/admin/SystemUpdateInfo;->of(JZ)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7778
    goto :goto_0

    .line 7776
    :catch_0
    move-exception v0

    .line 7777
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7780
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1881
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1890
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 1892
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1893
    :catch_0
    move-exception v0

    .line 1894
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1897
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reboot(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8023
    const-string/jumbo v0, "reboot"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8025
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reboot(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8028
    nop

    .line 8029
    return-void

    .line 8026
    :catch_0
    move-exception v0

    .line 8027
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1913
    const-string/jumbo v0, "removeActiveAdmin"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 1914
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 1916
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    goto :goto_0

    .line 1917
    :catch_0
    move-exception v0

    .line 1918
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1921
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 7544
    const-string/jumbo v0, "removeCrossProfileWidgetProvider"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7545
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7547
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7548
    :catch_0
    move-exception v0

    .line 7549
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7552
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;

    .line 4150
    const-string/jumbo v0, "removeKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4152
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4153
    :catch_0
    move-exception v0

    .line 4154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeOverrideApn(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I

    .line 9483
    const-string/jumbo v0, "removeOverrideApn"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9484
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9486
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeOverrideApn(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9487
    :catch_0
    move-exception v0

    .line 9488
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9491
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 6624
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6626
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6627
    :catch_0
    move-exception v0

    .line 6628
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportFailedFingerprintAttempt(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 4907
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4909
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedFingerprintAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4912
    goto :goto_0

    .line 4910
    :catch_0
    move-exception v0

    .line 4911
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4914
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 4881
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4883
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedPasswordAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4886
    goto :goto_0

    .line 4884
    :catch_0
    move-exception v0

    .line 4885
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4888
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public reportKeyguardDismissed(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 4934
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4936
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportKeyguardDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4939
    goto :goto_0

    .line 4937
    :catch_0
    move-exception v0

    .line 4938
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4941
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public reportKeyguardSecured(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 4948
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4950
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportKeyguardSecured(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4953
    goto :goto_0

    .line 4951
    :catch_0
    move-exception v0

    .line 4952
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4955
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public reportPasswordChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 4868
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4870
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportPasswordChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4873
    goto :goto_0

    .line 4871
    :catch_0
    move-exception v0

    .line 4872
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4875
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public reportSuccessfulFingerprintAttempt(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 4920
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4922
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulFingerprintAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4925
    goto :goto_0

    .line 4923
    :catch_0
    move-exception v0

    .line 4924
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4927
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 4894
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4896
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4899
    goto :goto_0

    .line 4897
    :catch_0
    move-exception v0

    .line 4898
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4901
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestBugreport(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 4577
    const-string/jumbo v0, "requestBugreport"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4578
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4580
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4581
    :catch_0
    move-exception v0

    .line 4582
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4585
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 3045
    const-string/jumbo v0, "resetPassword"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3046
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3048
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3049
    :catch_0
    move-exception v0

    .line 3050
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3053
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # [B
    .param p4, "flags"    # I

    .line 3169
    const-string/jumbo v0, "resetPassword"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3170
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3172
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/admin/IDevicePolicyManager;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3173
    :catch_0
    move-exception v0

    .line 3174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3177
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public retrieveNetworkLogs(Landroid/content/ComponentName;J)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "batchToken"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    .line 8999
    const-string/jumbo v0, "retrieveNetworkLogs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9001
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->retrieveNetworkLogs(Landroid/content/ComponentName;J)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9002
    :catch_0
    move-exception v0

    .line 9003
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    .line 8425
    const-string/jumbo v0, "retrievePreRebootSecurityLogs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8427
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 8428
    .local v0, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    if-eqz v0, :cond_0

    .line 8429
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 8431
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 8433
    .end local v0    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :catch_0
    move-exception v0

    .line 8434
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public retrieveSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    .line 8293
    const-string/jumbo v0, "retrieveSecurityLogs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8295
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->retrieveSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 8296
    .local v0, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    if-eqz v0, :cond_0

    .line 8297
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 8300
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 8302
    .end local v0    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :catch_0
    move-exception v0

    .line 8303
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    .line 7044
    const-string/jumbo v0, "setAccountManagementDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7045
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7047
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7050
    goto :goto_0

    .line 7048
    :catch_0
    move-exception v0

    .line 7049
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7052
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z

    .line 4835
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 4836
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 2
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .line 4822
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4824
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4827
    goto :goto_0

    .line 4825
    :catch_0
    move-exception v0

    .line 4826
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4829
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V
    .locals 2
    .param p1, "metrics"    # Landroid/app/admin/PasswordMetrics;
    .param p2, "userHandle"    # I

    .line 4855
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4857
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4860
    goto :goto_0

    .line 4858
    :catch_0
    move-exception v0

    .line 4859
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4862
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setActiveProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5243
    const-string/jumbo v0, "setActiveProfileOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5244
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5246
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    .line 5247
    .local v0, "myUserId":I
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2, p1, v1, v0}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 5248
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 5249
    .end local v0    # "myUserId":I
    :catch_0
    move-exception v0

    .line 5250
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5253
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return v1
.end method

.method public setAffiliationIds(Landroid/content/ComponentName;Ljava/util/Set;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8645
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "setAffiliationIds"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8646
    if-eqz p2, :cond_0

    .line 8650
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8653
    nop

    .line 8654
    return-void

    .line 8651
    :catch_0
    move-exception v0

    .line 8652
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8647
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ids must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdownEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 4479
    const-string/jumbo v0, "setAlwaysOnVpnPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4480
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1

    .line 4482
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4487
    goto :goto_0

    .line 4483
    :cond_0
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4485
    :catch_0
    move-exception v0

    .line 4486
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4489
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    .line 6905
    const-string/jumbo v0, "setApplicationHidden"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6906
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6908
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6910
    :catch_0
    move-exception v0

    .line 6911
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6914
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;

    .line 5777
    const-string/jumbo v0, "setApplicationRestrictions"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5778
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5780
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5784
    goto :goto_0

    .line 5782
    :catch_0
    move-exception v0

    .line 5783
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5786
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5673
    const-string/jumbo v0, "setApplicationRestrictionsManagingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5674
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1

    .line 5676
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5681
    goto :goto_0

    .line 5677
    :cond_0
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5679
    :catch_0
    move-exception v0

    .line 5680
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5683
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z

    .line 4663
    const-string/jumbo v0, "setAutoTimeRequired"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4664
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4666
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4669
    goto :goto_0

    .line 4667
    :catch_0
    move-exception v0

    .line 4668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4671
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 8823
    const-string/jumbo v0, "setBackupServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8825
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8828
    nop

    .line 8829
    return-void

    .line 8826
    :catch_0
    move-exception v0

    .line 8827
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 6033
    const-string/jumbo v0, "setBluetoothContactSharingDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6034
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6036
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6039
    goto :goto_0

    .line 6037
    :catch_0
    move-exception v0

    .line 6038
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6041
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 4529
    const-string/jumbo v0, "setCameraDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4530
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4532
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4535
    goto :goto_0

    .line 4533
    :catch_0
    move-exception v0

    .line 4534
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4537
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4332
    const-string/jumbo v0, "setCertInstallerPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4333
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4335
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4338
    goto :goto_0

    .line 4336
    :catch_0
    move-exception v0

    .line 4337
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4340
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 5879
    const-string/jumbo v0, "setCrossProfileCallerIdDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5880
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5882
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5885
    goto :goto_0

    .line 5883
    :catch_0
    move-exception v0

    .line 5884
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5887
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 5941
    const-string/jumbo v0, "setCrossProfileContactsSearchDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5942
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5944
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5947
    goto :goto_0

    .line 5945
    :catch_0
    move-exception v0

    .line 5946
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5949
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5640
    const-string/jumbo v0, "setDefaultSmsApplication"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5641
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5643
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5646
    goto :goto_0

    .line 5644
    :catch_0
    move-exception v0

    .line 5645
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5648
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "delegatePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4391
    .local p3, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setDelegatedScopes"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4392
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4394
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4397
    goto :goto_0

    .line 4395
    :catch_0
    move-exception v0

    .line 4396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4399
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDeviceOwner(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 4967
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceOwner(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4974
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/admin/DevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;

    .line 4981
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 5001
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5003
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5004
    :catch_0
    move-exception v0

    .line 5005
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5008
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "info"    # Ljava/lang/CharSequence;

    .line 5349
    const-string/jumbo v0, "setDeviceOwnerLockScreenInfo"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5350
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5352
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5355
    goto :goto_0

    .line 5353
    :catch_0
    move-exception v0

    .line 5354
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5357
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDeviceProvisioningConfigApplied()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8762
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->setDeviceProvisioningConfigApplied()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8765
    nop

    .line 8766
    return-void

    .line 8763
    :catch_0
    move-exception v0

    .line 8764
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "endUserSessionMessage"    # Ljava/lang/CharSequence;

    .line 9357
    const-string/jumbo v0, "setEndUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9359
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9362
    nop

    .line 9363
    return-void

    .line 9360
    :catch_0
    move-exception v0

    .line 9361
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "forceEphemeralUsers"    # Z

    .line 4704
    const-string/jumbo v0, "setForceEphemeralUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4705
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4707
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4710
    goto :goto_0

    .line 4708
    :catch_0
    move-exception v0

    .line 4709
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4712
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/net/Proxy;Ljava/util/List;)Landroid/content/ComponentName;
    .locals 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 3490
    .local p3, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setGlobalProxy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3491
    if-eqz p2, :cond_7

    .line 3494
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_6

    .line 3498
    :try_start_0
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p2, v0}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3499
    const/4 v0, 0x0

    .line 3500
    .local v0, "hostSpec":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3500
    .local v1, "exclSpec":Ljava/lang/String;
    goto/16 :goto_3

    .line 3502
    .end local v0    # "hostSpec":Ljava/lang/String;
    .end local v1    # "exclSpec":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-virtual {v0, v1}, Ljava/net/Proxy$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3505
    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 3506
    .local v0, "sa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 3507
    .local v1, "hostName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 3508
    .local v2, "port":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3509
    .local v3, "hostBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    .line 3510
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3511
    .local v4, "hostSpec":Ljava/lang/String;
    if-nez p3, :cond_1

    .line 3512
    const-string v5, ""

    .line 3512
    .local v5, "exclSpec":Ljava/lang/String;
    goto :goto_2

    .line 3514
    .end local v5    # "exclSpec":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3515
    .local v5, "listBuilder":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    .line 3516
    .local v6, "firstDomain":Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3517
    .local v8, "exclDomain":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 3518
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3520
    :cond_2
    const/4 v6, 0x0

    .line 3522
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3523
    .end local v8    # "exclDomain":Ljava/lang/String;
    goto :goto_0

    .line 3524
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3524
    .end local v5    # "listBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "firstDomain":Z
    move-object v5, v7

    .line 3526
    .local v5, "exclSpec":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 3530
    .end local v0    # "sa":Ljava/net/InetSocketAddress;
    .end local v1    # "hostName":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "hostBuilder":Ljava/lang/StringBuilder;
    move-object v0, v4

    move-object v1, v5

    .line 3530
    .end local v4    # "hostSpec":Ljava/lang/String;
    .end local v5    # "exclSpec":Ljava/lang/String;
    .local v0, "hostSpec":Ljava/lang/String;
    .local v1, "exclSpec":Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2, p1, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2

    .line 3528
    .local v0, "sa":Ljava/net/InetSocketAddress;
    .local v1, "hostName":Ljava/lang/String;
    .restart local v2    # "port":I
    .restart local v3    # "hostBuilder":Ljava/lang/StringBuilder;
    .restart local v4    # "hostSpec":Ljava/lang/String;
    .restart local v5    # "exclSpec":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 3503
    .end local v0    # "sa":Ljava/net/InetSocketAddress;
    .end local v1    # "hostName":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "hostBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "hostSpec":Ljava/lang/String;
    .end local v5    # "exclSpec":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3531
    :catch_0
    move-exception v0

    .line 3532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3535
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    const/4 v0, 0x0

    return-object v0

    .line 3492
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 7246
    const-string/jumbo v0, "setGlobalSetting"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7247
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7249
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7252
    goto :goto_0

    .line 7250
    :catch_0
    move-exception v0

    .line 7251
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7254
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6463
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setKeepUninstalledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6464
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6466
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6469
    goto :goto_0

    .line 6467
    :catch_0
    move-exception v0

    .line 6468
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6471
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;
    .param p4, "isUserSelectable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;Z)Z"
        }
    .end annotation

    .line 4276
    .local p3, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const-string/jumbo v0, "setKeyPairCertificate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4278
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/security/cert/Certificate;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    aput-object v3, v2, v1

    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v8

    .line 4279
    .local v8, "pemCert":[B
    const/4 v2, 0x0

    .line 4280
    .local v2, "pemChain":[B
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 4281
    nop

    .line 4282
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p3, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-array v3, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 4281
    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    .line 4281
    .end local v2    # "pemChain":[B
    .local v0, "pemChain":[B
    goto :goto_0

    .line 4284
    .end local v0    # "pemChain":[B
    .restart local v2    # "pemChain":[B
    :cond_0
    move-object v0, v2

    .line 4284
    .end local v2    # "pemChain":[B
    .restart local v0    # "pemChain":[B
    :goto_0
    iget-object v4, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    move-object v7, p2

    move-object v9, v0

    move v10, p4

    invoke-interface/range {v4 .. v10}, Landroid/app/admin/IDevicePolicyManager;->setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 4288
    .end local v0    # "pemChain":[B
    .end local v8    # "pemCert":[B
    :catch_0
    move-exception v0

    .line 4289
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not pem-encode certificate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4291
    .end local v0    # "e":Ljava/lang/Exception;
    return v1

    .line 4286
    :catch_1
    move-exception v0

    .line 4287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 7690
    const-string/jumbo v0, "setKeyguardDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7692
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7693
    :catch_0
    move-exception v0

    .line 7694
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "which"    # I

    .line 4778
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4780
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4783
    goto :goto_0

    .line 4781
    :catch_0
    move-exception v0

    .line 4782
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4785
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setLockTaskFeatures(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I

    .line 7175
    const-string/jumbo v0, "setLockTaskFeatures"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7176
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7178
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLockTaskFeatures(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7181
    goto :goto_0

    .line 7179
    :catch_0
    move-exception v0

    .line 7180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7183
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 7108
    const-string/jumbo v0, "setLockTaskPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7109
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7111
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7114
    goto :goto_0

    .line 7112
    :catch_0
    move-exception v0

    .line 7113
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7116
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setLogoutEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 9214
    const-string/jumbo v0, "setLogoutEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9216
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLogoutEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9219
    nop

    .line 9220
    return-void

    .line 9217
    :catch_0
    move-exception v0

    .line 9218
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 8096
    const-string/jumbo v0, "setLongSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8097
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8099
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8102
    goto :goto_0

    .line 8100
    :catch_0
    move-exception v0

    .line 8101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8104
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setMandatoryBackupTransport(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "backupTransportComponent"    # Landroid/content/ComponentName;

    .line 8870
    const-string/jumbo v0, "setMandatoryBackupTransport"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8872
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMandatoryBackupTransport(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8873
    :catch_0
    move-exception v0

    .line 8874
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .line 7417
    const-string/jumbo v0, "setMasterVolumeMuted"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7418
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7420
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7423
    goto :goto_0

    .line 7421
    :catch_0
    move-exception v0

    .line 7422
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7425
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I

    .line 2928
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2930
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2933
    goto :goto_0

    .line 2931
    :catch_0
    move-exception v0

    .line 2932
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2935
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J

    .line 3199
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3201
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3204
    goto :goto_0

    .line 3202
    :catch_0
    move-exception v0

    .line 3203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3206
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8349
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setMeteredDataDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8350
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8352
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8353
    :catch_0
    move-exception v0

    .line 8354
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8357
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object p2
.end method

.method public setNetworkLoggingEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 8941
    const-string/jumbo v0, "setNetworkLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8943
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setNetworkLoggingEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8946
    nop

    .line 8947
    return-void

    .line 8944
    :catch_0
    move-exception v0

    .line 8945
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOrganizationColor(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "color"    # I

    .line 8451
    const-string/jumbo v0, "setOrganizationColor"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8454
    const/high16 v0, -0x1000000

    or-int/2addr p2, v0

    .line 8455
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationColor(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8458
    nop

    .line 8459
    return-void

    .line 8456
    :catch_0
    move-exception v0

    .line 8457
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOrganizationColorForUser(II)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "userId"    # I

    .line 8475
    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 8476
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationColorForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8479
    nop

    .line 8480
    return-void

    .line 8477
    :catch_0
    move-exception v0

    .line 8478
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 8527
    const-string/jumbo v0, "setOrganizationName"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8529
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8532
    nop

    .line 8533
    return-void

    .line 8530
    :catch_0
    move-exception v0

    .line 8531
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 9526
    const-string/jumbo v0, "setOverrideApnEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9527
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9529
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9532
    goto :goto_0

    .line 9530
    :catch_0
    move-exception v0

    .line 9531
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9534
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPackagesSuspended(Landroid/content/ComponentName;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "suspended"    # Z

    .line 5400
    const-string/jumbo v0, "setPackagesSuspended"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5401
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5403
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5405
    :catch_0
    move-exception v0

    .line 5406
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5409
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object p2
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J

    .line 2673
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2675
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2678
    goto :goto_0

    .line 2676
    :catch_0
    move-exception v0

    .line 2677
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2680
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .line 2635
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2637
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2640
    goto :goto_0

    .line 2638
    :catch_0
    move-exception v0

    .line 2639
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2642
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .line 2162
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2164
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2167
    goto :goto_0

    .line 2165
    :catch_0
    move-exception v0

    .line 2166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2169
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .line 2363
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2365
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2368
    goto :goto_0

    .line 2366
    :catch_0
    move-exception v0

    .line 2367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2370
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .line 2294
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2296
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2299
    goto :goto_0

    .line 2297
    :catch_0
    move-exception v0

    .line 2298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2301
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .line 2566
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2568
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2571
    goto :goto_0

    .line 2569
    :catch_0
    move-exception v0

    .line 2570
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2573
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .line 2431
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2433
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2436
    goto :goto_0

    .line 2434
    :catch_0
    move-exception v0

    .line 2435
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2438
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .line 2499
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2501
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2504
    goto :goto_0

    .line 2502
    :catch_0
    move-exception v0

    .line 2503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2506
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .line 2225
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2227
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2230
    goto :goto_0

    .line 2228
    :catch_0
    move-exception v0

    .line 2229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2232
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I

    .line 2098
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2100
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2103
    goto :goto_0

    .line 2101
    :catch_0
    move-exception v0

    .line 2102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2105
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "grantState"    # I

    .line 7880
    const-string/jumbo v0, "setPermissionGrantState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7882
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7884
    :catch_0
    move-exception v0

    .line 7885
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPermissionPolicy(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .line 7821
    const-string/jumbo v0, "setPermissionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7823
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7826
    nop

    .line 7827
    return-void

    .line 7824
    :catch_0
    move-exception v0

    .line 7825
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 6157
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setPermittedAccessibilityServices"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6158
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6160
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6161
    :catch_0
    move-exception v0

    .line 6162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6165
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 6369
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setPermittedCrossProfileNotificationListeners"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6370
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6372
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6373
    :catch_0
    move-exception v0

    .line 6374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6377
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 6261
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setPermittedInputMethods"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6262
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6264
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6265
    :catch_0
    move-exception v0

    .line 6266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6269
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 5451
    const-string/jumbo v0, "setProfileEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5452
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5454
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setProfileEnabled(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5457
    goto :goto_0

    .line 5455
    :catch_0
    move-exception v0

    .line 5456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5459
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 5473
    const-string/jumbo v0, "setProfileName"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5474
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5476
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5479
    goto :goto_0

    .line 5477
    :catch_0
    move-exception v0

    .line 5478
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5481
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5318
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1

    .line 5320
    if-nez p2, :cond_0

    .line 5321
    :try_start_0
    const-string v0, ""

    move-object p2, v0

    goto :goto_0

    .line 5324
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5323
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5324
    :goto_1
    nop

    .line 5325
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5328
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 3556
    const-string/jumbo v0, "setRecommendedGlobalProxy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3557
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3559
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3562
    goto :goto_0

    .line 3560
    :catch_0
    move-exception v0

    .line 3561
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3564
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setRequiredStrongAuthTimeout(Landroid/content/ComponentName;J)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMs"    # J

    .line 3273
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3275
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3278
    goto :goto_0

    .line 3276
    :catch_0
    move-exception v0

    .line 3277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3280
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setResetPasswordToken(Landroid/content/ComponentName;[B)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "token"    # [B

    .line 3088
    const-string/jumbo v0, "setResetPasswordToken"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3089
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3091
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setResetPasswordToken(Landroid/content/ComponentName;[B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3092
    :catch_0
    move-exception v0

    .line 3093
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3096
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "provider"    # Landroid/content/ComponentName;

    .line 7398
    const-string/jumbo v0, "setRestrictionsProvider"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7399
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7401
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7404
    goto :goto_0

    .line 7402
    :catch_0
    move-exception v0

    .line 7403
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7406
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 4616
    const-string/jumbo v0, "setScreenCaptureDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4617
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4619
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4622
    goto :goto_0

    .line 4620
    :catch_0
    move-exception v0

    .line 4621
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4624
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 7374
    const-string/jumbo v0, "setSecureSetting"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7375
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7377
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7380
    goto :goto_0

    .line 7378
    :catch_0
    move-exception v0

    .line 7379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7382
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 8247
    const-string/jumbo v0, "setSecurityLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8249
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8252
    nop

    .line 8253
    return-void

    .line 8250
    :catch_0
    move-exception v0

    .line 8251
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 8050
    const-string/jumbo v0, "setShortSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8051
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8053
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8056
    goto :goto_0

    .line 8054
    :catch_0
    move-exception v0

    .line 8055
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8058
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "startUserSessionMessage"    # Ljava/lang/CharSequence;

    .line 9332
    const-string/jumbo v0, "setStartUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9334
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9337
    nop

    .line 9338
    return-void

    .line 9335
    :catch_0
    move-exception v0

    .line 9336
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 7718
    const-string/jumbo v0, "setStatusBarDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7720
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7721
    :catch_0
    move-exception v0

    .line 7722
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z

    .line 3765
    const-string/jumbo v0, "setStorageEncryption"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3766
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3768
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3769
    :catch_0
    move-exception v0

    .line 3770
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3773
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 7287
    const-string/jumbo v0, "setSystemSetting"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7288
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7290
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7293
    goto :goto_0

    .line 7291
    :catch_0
    move-exception v0

    .line 7292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7295
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/SystemUpdatePolicy;

    .line 7623
    const-string/jumbo v0, "setSystemUpdatePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7624
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7626
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7629
    goto :goto_0

    .line 7627
    :catch_0
    move-exception v0

    .line 7628
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7631
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setTime(Landroid/content/ComponentName;J)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "millis"    # J

    .line 7308
    const-string/jumbo v0, "setTime"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7309
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7311
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setTime(Landroid/content/ComponentName;J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7312
    :catch_0
    move-exception v0

    .line 7313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7316
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeZone"    # Ljava/lang/String;

    .line 7332
    const-string/jumbo v0, "setTimeZone"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7333
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7335
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7336
    :catch_0
    move-exception v0

    .line 7337
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7340
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "configuration"    # Landroid/os/PersistableBundle;

    .line 5821
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5823
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5826
    goto :goto_0

    .line 5824
    :catch_0
    move-exception v0

    .line 5825
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5828
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uninstallBlocked"    # Z

    .line 7461
    const-string/jumbo v0, "setUninstallBlocked"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7462
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7464
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7468
    goto :goto_0

    .line 7466
    :catch_0
    move-exception v0

    .line 7467
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7470
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 7588
    const-string/jumbo v0, "setUserIcon"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7590
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7593
    nop

    .line 7594
    return-void

    .line 7591
    :catch_0
    move-exception v0

    .line 7592
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserProvisioningState(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "userHandle"    # I

    .line 8616
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8618
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserProvisioningState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8621
    goto :goto_0

    .line 8619
    :catch_0
    move-exception v0

    .line 8620
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8623
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V
    .locals 8
    .param p1, "actualLookupKey"    # Ljava/lang/String;
    .param p2, "actualContactId"    # J
    .param p4, "originalIntent"    # Landroid/content/Intent;

    .line 6015
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/admin/DevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 6017
    return-void
.end method

.method public startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    .locals 10
    .param p1, "actualLookupKey"    # Ljava/lang/String;
    .param p2, "actualContactId"    # J
    .param p4, "isContactIdIgnored"    # Z
    .param p5, "directoryId"    # J
    .param p7, "originalIntent"    # Landroid/content/Intent;

    move-object v1, p0

    .line 5999
    iget-object v0, v1, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6001
    :try_start_0
    iget-object v2, v1, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-wide v7, p5

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroid/app/admin/IDevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6005
    goto :goto_0

    .line 6003
    :catch_0
    move-exception v0

    .line 6004
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 6007
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 6666
    const-string/jumbo v0, "startUserInBackground"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6668
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6669
    :catch_0
    move-exception v0

    .line 6670
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 6689
    const-string/jumbo v0, "stopUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6691
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6692
    :catch_0
    move-exception v0

    .line 6693
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 6643
    const-string/jumbo v0, "switchUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6645
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6646
    :catch_0
    move-exception v0

    .line 6647
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "bundle"    # Landroid/os/PersistableBundle;

    .line 9307
    const-string/jumbo v0, "transferOwnership"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9309
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9312
    nop

    .line 9313
    return-void

    .line 9310
    :catch_0
    move-exception v0

    .line 9311
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public uninstallAllUserCaCerts(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 3977
    const-string/jumbo v0, "uninstallAllUserCaCerts"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3978
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3980
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 3981
    invoke-virtual {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 3980
    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3984
    goto :goto_0

    .line 3982
    :catch_0
    move-exception v0

    .line 3983
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3986
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public uninstallCaCert(Landroid/content/ComponentName;[B)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    .line 3922
    const-string/jumbo v0, "uninstallCaCert"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3923
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3925
    :try_start_0
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;

    move-result-object v0

    .line 3926
    .local v0, "alias":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, p1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "alias":Ljava/lang/String;
    goto :goto_0

    .line 3929
    :catch_0
    move-exception v0

    .line 3930
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3927
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3928
    .local v0, "e":Ljava/security/cert/CertificateException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse certificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3931
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :goto_0
    nop

    .line 3933
    :cond_0
    return-void
.end method

.method public uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 8707
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8710
    nop

    .line 8711
    return-void

    .line 8708
    :catch_0
    move-exception v0

    .line 8709
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I
    .param p3, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 9457
    const-string/jumbo v0, "updateOverrideApn"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9458
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9460
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9461
    :catch_0
    move-exception v0

    .line 9462
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9465
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public wipeData(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 3418
    const-string/jumbo v0, "wipeData"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3419
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    const v1, 0x10406f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3421
    .local v0, "wipeReasonForUser":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->wipeDataInternal(ILjava/lang/String;)V

    .line 3422
    return-void
.end method

.method public wipeData(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "reason"    # Ljava/lang/CharSequence;

    .line 3443
    const-string/jumbo v0, "wipeData"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3444
    const-string v0, "CharSequence is null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3445
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->wipeDataInternal(ILjava/lang/String;)V

    .line 3446
    return-void
.end method
