.class Lcom/adobe/adobepass/accessenabler/d/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/adobepass/accessenabler/d/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adobepass/accessenabler/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Lcom/adobe/adobepass/accessenabler/d/b;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/d/a$c;->a:Ljava/util/Map;

    .line 458
    new-instance v0, Lcom/adobe/adobepass/accessenabler/d/b;

    invoke-direct {v0}, Lcom/adobe/adobepass/accessenabler/d/b;-><init>()V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/d/a$c;->b:Lcom/adobe/adobepass/accessenabler/d/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/d/a$c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 482
    if-nez v0, :cond_0

    .line 483
    const/4 v0, -0x1

    .line 485
    :goto_0
    return v0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/d/a$c;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/d/a$c;->b:Lcom/adobe/adobepass/accessenabler/d/b;

    invoke-virtual {v0, p2, p1}, Lcom/adobe/adobepass/accessenabler/d/b;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 468
    return-void
.end method
