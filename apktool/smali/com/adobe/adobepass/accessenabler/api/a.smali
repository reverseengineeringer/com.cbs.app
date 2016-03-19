.class public Lcom/adobe/adobepass/accessenabler/api/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/adobepass/accessenabler/api/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/adobe/adobepass/accessenabler/api/f;

.field private f:Lcom/adobe/adobepass/accessenabler/api/b;

.field private final g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "adobepass://android.app"

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/adobepass/accessenabler/api/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/a$1;

    invoke-direct {v0, p0}, Lcom/adobe/adobepass/accessenabler/api/a$1;-><init>(Lcom/adobe/adobepass/accessenabler/api/a;)V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/a;->g:Landroid/os/Handler;

    .line 162
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    .line 166
    :try_start_0
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-direct {v0, p1}, Lcom/adobe/adobepass/accessenabler/api/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/a;->f:Lcom/adobe/adobepass/accessenabler/api/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/a;->c:Ljava/lang/String;

    .line 173
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    new-instance v1, Lcom/adobe/adobepass/accessenabler/api/c;

    invoke-direct {v1, v0}, Lcom/adobe/adobepass/accessenabler/api/c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/adobe/adobepass/accessenabler/api/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method protected static a()Lcom/adobe/adobepass/accessenabler/api/a;
    .locals 2

    .prologue
    .line 136
    const-class v1, Lcom/adobe/adobepass/accessenabler/api/a;

    monitor-enter v1

    .line 137
    :try_start_0
    invoke-static {}, Lcom/adobe/adobepass/accessenabler/api/a$a;->a()Lcom/adobe/adobepass/accessenabler/api/a;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/adobe/adobepass/accessenabler/api/a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 37
    .line 1357
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/a;->e:Lcom/adobe/adobepass/accessenabler/api/f;

    invoke-virtual {v0, p2}, Lcom/adobe/adobepass/accessenabler/api/f;->a(Ljava/util/Map;)V

    .line 1358
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/a;->e:Lcom/adobe/adobepass/accessenabler/api/f;

    invoke-virtual {v0, p1}, Lcom/adobe/adobepass/accessenabler/api/f;->a(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static k()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a:Z

    .line 367
    return-void
.end method


# virtual methods
.method public final a(Lcom/adobe/adobepass/accessenabler/api/d;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/a;->f:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-object p1, v0, Lcom/adobe/adobepass/accessenabler/api/b;->j:Lcom/adobe/adobepass/accessenabler/api/d;

    .line 194
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    const-class v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 291
    const-string v2, "op_code"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    const-string v2, "resource_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 295
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    iput-object p2, p0, Lcom/adobe/adobepass/accessenabler/api/a;->d:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->f:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/api/f;->a(Landroid/content/Context;Lcom/adobe/adobepass/accessenabler/api/b;)Lcom/adobe/adobepass/accessenabler/api/f;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/a;->e:Lcom/adobe/adobepass/accessenabler/api/f;

    .line 214
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    const-class v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string v2, "op_code"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v2, "requestor_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v2, "sp_urls"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 221
    return-void
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/a;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    const-class v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 310
    const-string v2, "op_code"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    const-string v2, "mvpd_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 313
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 314
    return-void
.end method

.method public final c()Lcom/adobe/adobepass/accessenabler/api/d;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/a;->f:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->j:Lcom/adobe/adobepass/accessenabler/api/d;

    return-object v0
.end method

.method public final d()Lcom/adobe/adobepass/accessenabler/api/b;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/a;->f:Lcom/adobe/adobepass/accessenabler/api/b;

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    const-class v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 226
    const-string v2, "op_code"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 228
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 229
    return-void
.end method

.method public final h()V
    .locals 4

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    const-class v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 234
    const-string v2, "op_code"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string v2, "force_authn"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string v2, "generic_data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 239
    return-void
.end method

.method public final i()V
    .locals 4

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    const-class v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 254
    const-string v2, "op_code"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 257
    return-void
.end method

.method public final j()V
    .locals 4

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    const-class v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 336
    const-string v2, "op_code"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 338
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 339
    return-void
.end method
