import { string } from "joi"
import agencies from "./agencies"

export interface FindSlots {
    agency: string;
    appointmentType: number;
    numberOfPeople: number;
    date: string;
}

export interface EmailData {
    agency: string;
    date: string;
}