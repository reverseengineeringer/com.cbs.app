.class public final Lcom/adobe/adobepass/accessenabler/api/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adobepass/accessenabler/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/adobe/adobepass/accessenabler/api/a;


# direct methods
.method static synthetic a()Lcom/adobe/adobepass/accessenabler/api/a;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/adobe/adobepass/accessenabler/api/a$a;->a:Lcom/adobe/adobepass/accessenabler/api/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/adobe/adobepass/accessenabler/api/a;
    .locals 3

    .prologue
    .line 126
    const-class v1, Lcom/adobe/adobepass/accessenabler/api/a;

    monitor-enter v1

    .line 127
    :try_start_0
    sget-object v0, Lcom/adobe/adobepass/accessenabler/api/a$a;->a:Lcom/adobe/adobepass/accessenabler/api/a;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/adobe/adobepass/accessenabler/api/a;-><init>(Landroid/content/Context;B)V

    sput-object v0, Lcom/adobe/adobepass/accessenabler/api/a$a;->a:Lcom/adobe/adobepass/accessenabler/api/a;

    .line 130
    :cond_0
    sget-object v0, Lcom/adobe/adobepass/accessenabler/api/a$a;->a:Lcom/adobe/adobepass/accessenabler/api/a;

    monitor-exit v1

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
