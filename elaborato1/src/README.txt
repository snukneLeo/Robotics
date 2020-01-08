Nella cartella SCADA_Robot è presente il file URDF per 
poterlo caricare attraverso RVIZ e visualizzare il manipolatore
In particolare per poter avviare il manipolatore con RVIZ
è possibile lanciare il comando:

'roslaunch SCADA_Robot scara_urdf_model.urdf'

Con il lancio di questo launch file si avvia anche 
i nodi per la sottoscrizione al topic per il calcolo
automatico della cinematica diretta e inversa.
In particolare il nodo publisher va ad ottenre la posizione
dell'endEffector e pubblica nel topic il valore della posa dell'endEffector.
Nel subscriber quindi in base alla sottroscizione del topic 
descritto precedente si calcola la cinematica inversa
e in aggiunta il subscriber si iscrive al topic per ottenre i valori dei joint 
presenti in RVIZ e quindi si calcola la cinematica diretta.

In piu nella cartella 'moveIt' è presente un pacchetto 
che permette di muovere il monipolatore con move it ed eseguire un
piano ed eseguirlo.