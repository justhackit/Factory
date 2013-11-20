.class public Lnitro/phonestats/core/helper/APNDroidStarter;
.super Landroid/app/Activity;
.source "APNDroidStarter.java"


# static fields
.field public static final ACTION_SERVICE:Ljava/lang/String; = "com.google.code.apndroid.intent.action.SERVICE"

.field public static final CHANGE_REQUEST:I = 0x1

.field public static final STATE_OFF:I = 0x0

.field public static final STATE_ON:I = 0x1

.field public static final STATE_REQUEST:I


# instance fields
.field private actionService:Lnitro/phonestats/IActionService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lnitro/phonestats/core/helper/APNDroidStarter;->actionService:Lnitro/phonestats/IActionService;

    .line 12
    return-void
.end method

.method private handleResult(ILandroid/os/Bundle;)V
    .locals 8
    .parameter "requestedCode"
    .parameter "bundle"

    .prologue
    const/4 v7, -0x1

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 104
    :pswitch_0
    const/4 v2, 0x1

    .line 105
    .local v2, onState:I
    const/4 v1, 0x0

    .line 107
    .local v1, offState:I
    const-string v5, "APN_STATE"

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 110
    .local v3, state:I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "Current state is "

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    if-ne v3, v2, :cond_1

    const-string v5, "on"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, currentState:Ljava/lang/String;
    if-eq v3, v7, :cond_0

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\nMms state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 116
    const-string v5, "MMS_STATE"

    .line 115
    invoke-virtual {p2, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_3

    .line 117
    const-string v5, "on"

    .line 115
    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    invoke-static {p0, v0}, Lnitro/phonestats/core/helper/NitroUtils;->longDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    if-ne v3, v2, :cond_4

    .line 121
    invoke-direct {p0}, Lnitro/phonestats/core/helper/APNDroidStarter;->switchOffMobile()V

    goto :goto_0

    .line 111
    .end local v0           #currentState:Ljava/lang/String;
    :cond_1
    if-ne v3, v1, :cond_2

    const-string v5, "off"

    goto :goto_1

    .line 112
    :cond_2
    const-string v5, "unknown"

    goto :goto_1

    .line 117
    .restart local v0       #currentState:Ljava/lang/String;
    :cond_3
    const-string v5, "off"

    goto :goto_2

    .line 123
    :cond_4
    invoke-virtual {p0}, Lnitro/phonestats/core/helper/APNDroidStarter;->finish()V

    goto :goto_0

    .line 127
    .end local v0           #currentState:Ljava/lang/String;
    .end local v1           #offState:I
    .end local v2           #onState:I
    .end local v3           #state:I
    :pswitch_1
    const-string v5, "SWITCH_SUCCESS"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "Switch was "

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v5, "SWITCH_SUCCESS"

    const/4 v7, 0x1

    .line 129
    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    const-string v5, "successful"

    .line 129
    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 128
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, switchSuccess:Ljava/lang/String;
    :goto_4
    invoke-static {p0, v4}, Lnitro/phonestats/core/helper/NitroUtils;->longDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lnitro/phonestats/core/helper/APNDroidStarter;->finish()V

    goto :goto_0

    .line 131
    .end local v4           #switchSuccess:Ljava/lang/String;
    :cond_5
    const-string v5, "unsuccessful"

    goto :goto_3

    .line 133
    :cond_6
    const-string v4, "Switch success is unknown"

    .restart local v4       #switchSuccess:Ljava/lang/String;
    goto :goto_4

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendRequest(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 1
    .parameter "intentString"
    .parameter "extras"
    .parameter "requestType"

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method private switchOffMobile()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "com.google.code.apndroid.intent.extra.TARGET_MMS_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string v1, "com.google.code.apndroid.intent.extra.TARGET_STATE"

    .line 90
    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v1, "com.google.code.apndroid.intent.extra.SHOW_NOTIFICATION"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    const-string v1, "com.google.code.apndroid.intent.action.CHANGE_REQUEST"

    invoke-direct {p0, v1, v0, v3}, Lnitro/phonestats/core/helper/APNDroidStarter;->sendRequest(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 95
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 150
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 151
    const-string v0, "com.google.code.apndroid.intent.REQUEST_RESULT"

    .line 152
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/core/helper/APNDroidStarter;->handleResult(ILandroid/os/Bundle;)V

    .line 155
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 75
    const-string v0, "DroidStats APNDroid Starter"

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/helper/APNDroidStarter;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    const-string v0, "com.google.code.apndroid.intent.action.STATUS_REQUEST"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lnitro/phonestats/core/helper/APNDroidStarter;->sendRequest(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 82
    return-void
.end method
