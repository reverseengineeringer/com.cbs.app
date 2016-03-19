.class public Lcom/visualon/OSMPUtils/voOSUniqID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PREFS_DEVICE_ID:Ljava/lang/String; = "review_policy"

.field private static final PREFS_FILE:Ljava/lang/String; = "voosmp_data.xml"

.field private static uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/visualon/OSMPUtils/voOSUniqID;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    .line 42
    const-string v0, "voosmp_data.xml"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 43
    const-string v0, "review_policy"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    .line 67
    :cond_0
    :goto_0
    monitor-exit v1

    .line 69
    :cond_1
    return-void

    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 49
    :try_start_1
    const-string v3, "9774d56d682e549c"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 50
    const-string v3, "utf8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "review_policy"

    sget-object v3, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 52
    :cond_3
    :try_start_3
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    const-string v3, "utf8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 61
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 56
    :cond_4
    :try_start_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getDeviceUUID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getDeviceUUIDString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
