.class public final Lcom/flurry/sdk/bj;
.super Lcom/flurry/sdk/bk;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/Boolean;

.field public static final g:Ljava/lang/Boolean;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/Boolean;

.field public static final j:Landroid/location/Criteria;

.field public static final k:Landroid/location/Location;

.field public static final l:Ljava/lang/Long;

.field public static final m:Ljava/lang/Boolean;

.field public static final n:Ljava/lang/Long;

.field public static final o:Ljava/lang/Byte;

.field private static p:Lcom/flurry/sdk/bj;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    const/16 v0, 0xc3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bj;->a:Ljava/lang/Integer;

    .line 60
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bj;->b:Ljava/lang/Integer;

    .line 61
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bj;->c:Ljava/lang/Integer;

    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bj;->d:Ljava/lang/Integer;

    .line 65
    sput-object v2, Lcom/flurry/sdk/bj;->e:Ljava/lang/String;

    .line 66
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bj;->f:Ljava/lang/Boolean;

    .line 67
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bj;->g:Ljava/lang/Boolean;

    .line 68
    sput-object v2, Lcom/flurry/sdk/bj;->h:Ljava/lang/String;

    .line 69
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bj;->i:Ljava/lang/Boolean;

    .line 70
    sput-object v2, Lcom/flurry/sdk/bj;->j:Landroid/location/Criteria;

    .line 71
    sput-object v2, Lcom/flurry/sdk/bj;->k:Landroid/location/Location;

    .line 72
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bj;->l:Ljava/lang/Long;

    .line 73
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bj;->m:Ljava/lang/Boolean;

    .line 74
    sput-object v2, Lcom/flurry/sdk/bj;->n:Ljava/lang/Long;

    .line 75
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bj;->o:Ljava/lang/Byte;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/flurry/sdk/bk;-><init>()V

    .line 1083
    const-string v0, "AgentVersion"

    sget-object v1, Lcom/flurry/sdk/bj;->a:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1084
    const-string v0, "ReleaseMajorVersion"

    sget-object v1, Lcom/flurry/sdk/bj;->b:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1085
    const-string v0, "ReleaseMinorVersion"

    sget-object v1, Lcom/flurry/sdk/bj;->c:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1086
    const-string v0, "ReleasePatchVersion"

    sget-object v1, Lcom/flurry/sdk/bj;->d:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1087
    const-string v0, "ReleaseBetaVersion"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1089
    const-string v0, "VersionName"

    sget-object v1, Lcom/flurry/sdk/bj;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1091
    const-string v0, "CaptureUncaughtExceptions"

    sget-object v1, Lcom/flurry/sdk/bj;->f:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1093
    const-string v0, "UseHttps"

    sget-object v1, Lcom/flurry/sdk/bj;->g:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1094
    const-string v0, "ReportUrl"

    sget-object v1, Lcom/flurry/sdk/bj;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1096
    const-string v0, "ReportLocation"

    sget-object v1, Lcom/flurry/sdk/bj;->i:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1097
    const-string v0, "ExplicitLocation"

    sget-object v1, Lcom/flurry/sdk/bj;->k:Landroid/location/Location;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1099
    const-string v0, "ContinueSessionMillis"

    sget-object v1, Lcom/flurry/sdk/bj;->l:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1100
    const-string v0, "LogEvents"

    sget-object v1, Lcom/flurry/sdk/bj;->m:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1101
    const-string v0, "Age"

    sget-object v1, Lcom/flurry/sdk/bj;->n:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1102
    const-string v0, "Gender"

    sget-object v1, Lcom/flurry/sdk/bj;->o:Ljava/lang/Byte;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1103
    const-string v0, "UserId"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/bj;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/flurry/sdk/bj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/bj;->p:Lcom/flurry/sdk/bj;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/flurry/sdk/bj;

    invoke-direct {v0}, Lcom/flurry/sdk/bj;-><init>()V

    sput-object v0, Lcom/flurry/sdk/bj;->p:Lcom/flurry/sdk/bj;

    .line 28
    :cond_0
    sget-object v0, Lcom/flurry/sdk/bj;->p:Lcom/flurry/sdk/bj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
