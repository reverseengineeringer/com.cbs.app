.class final Lcom/adobe/mobile/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/mobile/b;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/mobile/b$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/adobe/mobile/b$2;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/mobile/b$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/mobile/b$2;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/adobe/mobile/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    return-void
.end method
