.class public Lcom/urbanairship/actions/ActionValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/urbanairship/json/d;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/urbanairship/json/JsonValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/urbanairship/actions/ActionValue$1;

    invoke-direct {v0}, Lcom/urbanairship/actions/ActionValue$1;-><init>()V

    sput-object v0, Lcom/urbanairship/actions/ActionValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget-object v0, Lcom/urbanairship/json/JsonValue;->a:Lcom/urbanairship/json/JsonValue;

    iput-object v0, p0, Lcom/urbanairship/actions/ActionValue;->a:Lcom/urbanairship/json/JsonValue;

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/json/JsonValue;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    sget-object p1, Lcom/urbanairship/json/JsonValue;->a:Lcom/urbanairship/json/JsonValue;

    :cond_0
    iput-object p1, p0, Lcom/urbanairship/actions/ActionValue;->a:Lcom/urbanairship/json/JsonValue;

    .line 52
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/urbanairship/actions/ActionValue;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    .line 1160
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->a:Lcom/urbanairship/json/JsonValue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    return-object v0
.end method

.method public final b()Lcom/urbanairship/json/b;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->a:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->e()Lcom/urbanairship/json/b;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/urbanairship/json/c;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->a:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->a:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->g()Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/urbanairship/json/JsonValue;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->a:Lcom/urbanairship/json/JsonValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 232
    instance-of v0, p1, Lcom/urbanairship/actions/ActionValue;

    if-eqz v0, :cond_0

    .line 233
    check-cast p1, Lcom/urbanairship/actions/ActionValue;

    .line 234
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->a:Lcom/urbanairship/json/JsonValue;

    iget-object v1, p1, Lcom/urbanairship/actions/ActionValue;->a:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/JsonValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->a:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->a:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->a:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 268
    return-void
.end method
