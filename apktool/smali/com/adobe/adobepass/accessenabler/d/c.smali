.class public final Lcom/adobe/adobepass/accessenabler/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/adobepass/accessenabler/d/c$a;,
        Lcom/adobe/adobepass/accessenabler/d/c$b;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/adobepass/accessenabler/d/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/adobepass/accessenabler/d/c;->a:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/adobe/adobepass/accessenabler/d/c;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Lcom/adobe/adobepass/accessenabler/d/c$a;)V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/adobe/adobepass/accessenabler/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 46
    sget-object v0, Lcom/adobe/adobepass/accessenabler/d/c;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48
    :cond_0
    sget-object v0, Lcom/adobe/adobepass/accessenabler/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 62
    sget-boolean v0, Lcom/adobe/adobepass/accessenabler/d/c;->a:Z

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/adobe/adobepass/accessenabler/d/c$a;

    invoke-static {}, Lcom/adobe/adobepass/accessenabler/d/f;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adobe/adobepass/accessenabler/d/c$b;->b:Lcom/adobe/adobepass/accessenabler/d/c$b;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/adobe/adobepass/accessenabler/d/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/adobepass/accessenabler/d/c$b;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Lcom/adobe/adobepass/accessenabler/d/c$a;)V

    .line 66
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 69
    sget-boolean v0, Lcom/adobe/adobepass/accessenabler/d/c;->a:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Lcom/adobe/adobepass/accessenabler/d/c$a;

    invoke-static {}, Lcom/adobe/adobepass/accessenabler/d/f;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adobe/adobepass/accessenabler/d/c$b;->c:Lcom/adobe/adobepass/accessenabler/d/c$b;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/adobe/adobepass/accessenabler/d/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/adobepass/accessenabler/d/c$b;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Lcom/adobe/adobepass/accessenabler/d/c$a;)V

    .line 73
    :cond_0
    return-void
.end method
